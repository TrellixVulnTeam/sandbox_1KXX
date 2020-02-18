import abc
import argparse
import unittest

from pprintable import PPrintable

def is_option_action(action):
    return bool(action.option_strings)

def is_position_action(action):
    return not is_option_arg(action)

def is_subparser_action(action):
    return isinstance(action, argparse._SubParsersAction)

class ActionInspector(PPrintable):
    '''
    All Actions have:
    - option_strings
    - dest
    - nargs
    - const
    - default
    - type
    - choices
    - required
    - help
    - metavar

    argparse._VersionAction adds:
    - version

    argparse._SubParsersAction adds:
    - prog
    - parser_class
    '''

    NAME_MAP = {
        argparse._StoreAction : 'store',
        argparse._StoreConstAction : 'store_const',
        argparse._StoreTrueAction : 'store_true',
        argparse._StoreFalseAction : 'store_false',
        argparse._AppendAction : 'append',
        argparse._AppendConstAction : 'append_const',
        argparse._CountAction : 'count',
        argparse._HelpAction : 'help',
        argparse._VersionAction : 'version',
        argparse._SubParsersAction : 'parsers',
        argparse._ExtendAction : 'extend',
        }

    def __init__(self, action):
        if action.__class__ in self.NAME_MAP:
            self.action_type = self.NAME_MAP[action.__class__]
        else:
            self.action_type = action.__class__.__name__

        # passthrough of attributes
        self.action = action
        self.option_strings = action.option_strings
        self.dest = action.dest
        self.nargs = action.nargs
        self.const = action.const
        self.default = action.default
        self.type = action.type
        self.choices = action.choices
        if is_subparser_action(action):
            self.choices = {key: ParserInspector(val)
                            for key, val in action.choices.items()}
        self.required = action.required
        self.help = action.help
        self.metavar = action.metavar

        # optional attributes
        for attr in ('version', 'prog', 'parser_class'):
            if hasattr(action, attr):
                setattr(self, attr, getattr(action, attr))
            else:
                setattr(self, attr, None)

        # introspection

    def _get_kwargs(self):
        return [(name, getattr(self, name)) for name in [
            'option_strings',
            'action_type',
            'dest',
            'nargs',
            'const',
            'default',
            'type',
            'choices',
            'required',
            'help',
            'metavar',
            'version',
            'prog',
            'parser_class',
            ]]

class ParserInspector(PPrintable):
    'Introspection on an argparse.ArgumentParser'

    # class Action:
    # - option_strings
    # - dest
    # - nargs=None
    # - const=None
    # - default=None
    # - type=None
    # - choices=None
    # - required=False
    # - help=None
    # - metavar=None

    # class _StoreAction: (action='store', action=None)

    # class _StoreConstAction: (action='store_const')
    # - Required:
    #   - const
    # - Removed:
    #   - nargs
    #   - type
    #   - choices
    # - Fixed:
    #   - nargs=0

    # class _StoreTrueAction: (action='store_true')
    # - Changed:
    #   - default=False
    # - Removed:
    #   - nargs
    #   - const
    #   - type
    #   - choices
    #   - metavar
    # - Fixed:
    #   - const=True

    # class _StoreFalseAction: (action='store_false')
    # - Changed:
    #   - default=True
    # - Removed:
    #   - nargs
    #   - const
    #   - type
    #   - choices
    #   - metavar
    # - Fixed:
    #   - const=True

    # class _AppendAction: (action='append')

    # class _AppendConstAction: (action='append_const')
    # - Required:
    #   - const
    # - Removed:
    #   - type
    #   - choices

    # class _CountAction: (action='count')
    # - Removed:
    #   - nargs
    #   - const
    #   - type
    #   - choices
    #   - metavar
    # - Fixed:
    #   - nargs=0

    # class _HelpAction: (action='help')
    # - Changed:
    #   - dest=SUPPRESS
    #   - default=SUPPRESS
    # - Removed:
    #   - nargs
    #   - const
    #   - type
    #   - choices
    #   - required
    #   - metavar
    # - Fixed:
    #   - nargs=0

    # class _VersionAction: (action='version')
    # - Changed:
    #   - dest=SUPPRESS
    #   - default=SUPPRESS
    # - Added:
    #   - version=None
    # - Removed:
    #   - nargs
    #   - const
    #   - type
    #   - choices
    #   - required
    #   - metavar
    # - Fixed:
    #   - nargs=0

    # class _SubParsersAction: (action='parsers')
    # - Added:
    #   - prog
    #   - parser_class
    # - Changed:
    #   - dest=SUPPRESS
    # - Removed:
    #   - nargs
    #   - const
    #   - default
    #   - type
    #   - choices
    # - Fixed:
    #   - nargs=PARSER
    #   - choices=self._name_parser_map

    # class _ExtendAction: (action='extend')


    def __init__(self, parser):
        self.parser = parser
        self.option_actions = [
            ActionInspector(a) for a in self.parser._optionals._group_actions]
        self.position_actions = [
            ActionInspector(a) for a in self.parser._positionals._group_actions
            if not is_subparser_action(a)]
        self.subparser_actions = []
        if self.parser._subparsers:
            self.subparser_actions = [
                ActionInspector(a) for a in self.parser._subparsers._group_actions
                if is_subparser_action(a)]
        self.actions = self.option_actions + self.position_actions + \
                       self.subparser_actions

        self.option_strings = sum(
            [a.option_strings for a in self.option_actions], start=[])
        self.subparser_choices = sum(
            [list(a.choices) for a in self.subparser_actions], start=[])

    def _get_kwargs(self):
        return [(name, getattr(self, name)) for name in [
            'option_strings',
            'option_actions',
            'position_actions',
            'subparser_actions',
            ]]

class ArgParseTestBase(unittest.TestCase, metaclass=abc.ABCMeta):

    @abc.abstractmethod
    def bashcomplete(self, args):
        '''
        Return a list of completions from the current string of arguments.

        This is an abstract method that must be implemented by derivative
        classes.
        '''
        pass

    def assertEqualCompletion(self, args, expected_completions, msg=None):
        'Asserts that the expected completions are obtained'
        actual = self.bashcomplete(args)
        self.assertEqual(set(expected_completions), set(actual), msg=msg)

    def assertCompletionContains(self, args, expected_subset, msg=None):
        'Asserts that the expected completions are found in the actual'
        actual = self.bashcomplete(args)
        self.assertLessEqual(set(expected_subset), set(actual), msg=msg)

    def assertEmptyAvailableOptions(self, parser, cli=''):
        '''
        Asserts that all options and subparser choices are present in the bash
        completion for the given parser and the current cli.

        Note: The cli is only given to specify which subparser we are currently
        doing.  The parser given should match the subparser associated with the
        cli string.
        '''
        inspector = ParserInspector(parser)

        expected_completions = inspector.option_strings
        if not inspector.position_actions:
            expected_completions.extend(inspector.subparser_choices)

        self.assertCompletionContains(
            cli, expected_completions,
            msg='args: {}'.format(repr(cli)))

    def assertEachSubparserEmptyAvailableOptions(self, parser, cli=''):
        '''
        Asserts that all options and subparser choices are present for the
        current parser and for all subparsers recursively.  This method calls
        assertEmptyAvailableOptions() for the given parser and for all
        subparsers recursively.
        '''
        inspector = ParserInspector(parser)

        # test this parser level
        self.assertEmptyAvailableOptions(parser, cli)

        # test all subparsers recursively
        for choice in inspector.subparser_choices:
            subinspector = inspector.subparser_actions[0].choices[choice]
            self.assertEachSubparserEmptyAvailableOptions(
                subinspector.parser, cli='{} {} '.format(cli, choice))
