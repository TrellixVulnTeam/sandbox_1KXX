#include "gtest/gtest.h"

#include "CliParser.h"

#include <stdexcept>

namespace {

class FunctionalTests : public testing::Test {
protected:
  virtual void setUp() {}
  virtual void tearDown() {}
};

}

TEST_F(FunctionalTests, CommandLineExample) {
  std::vector<std::string> args {
    "progname", "--help", "-N", "3", "-o", "out.txt", "in.txt", "extra", "args"
  };

  CliParser parser;
  parser.add_flag("-h", "-help", "--help");
  parser.add_flag("-v", "--verbose");
  parser.add_argflag("-k", "--biggest");
  parser.add_argflag("-N");
  parser.add_argflag("-o", "--output");
  parser.add_positional("input");
  parser.set_required("--output");
  parser.set_required("input");

  // TODO: add description functions
  //parser.prog_description("program-description");
  //parser.set_description("-N", "N-description");
  //parser.set_description("--output", "my output description");

  parser.parse(args);

  // see that we can get the arguments back unchanged
  EXPECT_EQ(parser.args(), args);

  // see that we can check for which arguments were present
  EXPECT_TRUE(parser.has("-h"));
  EXPECT_TRUE(parser.has("-help"));
  EXPECT_TRUE(parser.has("--help"));
  EXPECT_FALSE(parser.has("-k"));
  EXPECT_FALSE(parser.has("--biggest"));
  EXPECT_FALSE(parser.has("-v"));
  EXPECT_FALSE(parser.has("--verbose"));
  EXPECT_TRUE(parser.has("-N"));
  EXPECT_TRUE(parser.has("-o"));
  EXPECT_TRUE(parser.has("--output"));
  EXPECT_TRUE(parser.has("input"));

  // see that checking a flag we didn't add throws an exception
  EXPECT_THROW(parser.has("--non-existent"), std::invalid_argument);

  // get the values of the arguments
  EXPECT_EQ(parser["-h"], "--help");
  EXPECT_EQ(parser["-help"], "--help");
  EXPECT_EQ(parser["--help"], "--help");
  EXPECT_THROW(parser["-v"], std::out_of_range);
  EXPECT_THROW(parser["--verbose"], std::out_of_range);
  EXPECT_THROW(parser["-k"], std::out_of_range);
  EXPECT_THROW(parser["--biggest"], std::out_of_range);
  EXPECT_EQ(parser["-N"], "3");
  EXPECT_EQ(parser["-o"], "out.txt");
  EXPECT_EQ(parser["--output"], "out.txt");

  // see that getting the value of an undefined flag throws an exception
  EXPECT_THROW(parser["--non-existent"], std::invalid_argument);

  // convert some values
  EXPECT_EQ(parser.get<int>("-N"), 3);
  EXPECT_THROW(parser.get<int>("-k"), std::out_of_range);
  //EXPECT_EQ(parser.get<int>("-N", 10), 3);
  //EXPECT_EQ(parser.get<int>("-k", 5), 5);
  EXPECT_EQ(parser.get<std::string>("--output"), "out.txt");
  EXPECT_EQ(parser.get<std::string>("input"), "in.txt");

  // see which arguments were not parsed
  std::vector<std::string> expected_remaining {"extra", "args"};
  EXPECT_EQ(parser.program_name(), "progname");
  EXPECT_EQ(parser.remaining(), expected_remaining);

  EXPECT_EQ(parser.usage(),
            "Usage:\n"
            "  progname\n"
            "    [-N <val>]\n"
            "    [-h]\n"
            "    [-k <val>]\n"
            "    [-v]\n"
            "    -o <val>\n"
            "    <input>\n"
            "\n"
            "Required Positional Arguments:\n"
            "  input\n"
            "\n"
            "Required Flags:\n"
            "  -o <val>, --output <val>\n"
            "\n"
            "Optional Flags:\n"
            "  -N <val>\n"
            "  -h, -help, --help\n"
            "  -k <val>, --biggest <val>\n"
            "  -v, --verbose\n"
            "\n");
}

/// TODO: test a metavar instead of <val> in usage string
/// TODO: test incorrect command-line usage handling
/// TODO: test adding overall description
/// TODO: test adding description for each option
/// TODO: test making a later positional required, but not an earlier

//TEST_F(FunctionalTests, NoArguments) {
//  // Fred tries to parse arguments, but only the program name
//  // is given
//  CliParser parser;
//
//  std::vector<std::string> args { "program-name" };
//  auto parsed = parser.parse_args(args);
//  // Fred sees that the program name is given, that the remaining
//  // arguments are empty, that he can retrieve the arguments he
//  // gave, and that any flag he checks returns false.
//  // Fred is happy.
//  EXPECT_EQ(parser.program_name(), "program-name");
//  EXPECT_EQ(parser.remaining_args(), decltype(args){});
//  EXPECT_EQ(parser.args(), args);
//  auto has_key = [&parsed](std::string x) {
//    return parsed.find(x) != parsed.end();
//  };
//  EXPECT_FALSE(has_key("-h"));
//  EXPECT_FALSE(has_key("--verbose"));
//  EXPECT_FALSE(has_key("--freds-birthday"));
//}
//
//TEST_F(FunctionalTests, OptionArguments) {
//  // Bob is parsing arguments and there are a few options he wants to find
//  std::vector<std::string> args {
//    "prog-name", "-h", "--verbose", "--not-quiet"
//  };
//  CliParser parser(args);
//  EXPECT_TRUE(parser.has_argument("-h", "--help"));
//  EXPECT_TRUE(parser.has_argument("-v", "--verbose"));
//  EXPECT_TRUE(parser.has_argument("--not-quiet"));
//  EXPECT_FALSE(parser.has_argument("-q", "--quiet"));
//  EXPECT_FALSE(parser.has_argument("-bbday", "--bobs-birthday"));
//  EXPECT_FALSE(parser.has_argument("--get-fridge"));
//  // all arguments have been queried, so no remaining arguments
//  EXPECT_EQ(parser.remaining_args(), decltype(args){});
//}

//TEST_F(FunctionalTests, RemainingArgumentsNoOptions) {
//  std::vector<std::string> args {
//    "program-name", "-h", "--verbose", "--not-quiet",
//  };
//  std::vector<std::string> expected_remaining(args.begin()+1, args.end());
//  CliParser parser(args);
//  EXPECT_EQ(expected_remaining, parser.remaining_args());
//}

//TEST_F(FunctionalTests, RemainingArgumentsSomeOptions) {
//  std::vector<std::string> args {
//    "program-name", "-h", "--verbose", "--not-quiet",
//  };
//  std::vector<std::string> expected_remaining {"-h", "--not-quiet"};
//  CliParser parser(args);
//  EXPECT_TRUE(parser.has_argument("-v", "--verbose"));
//  EXPECT_EQ(expected_remaining, parser.remaining_args());
//}

//TEST_F(FunctionalTests, ManyOptionTypesGiven) {
//  std::vector<std::string> args {
//    "program-name", "-h", "--help", "--verbose"
//  };
//  std::vector<std::string> expected_remaining {"--verbose"};
//  CliParser parser(args);
//  EXPECT_TRUE(parser.has_argument("-h", "-help", "--help"));
//  EXPECT_EQ(expected_remaining, parser.remaining_args());
//}

//TEST_F(FunctionalTests, CountArgumentZeroTimes) {
//  std::vector<std::string> args { "pn", "--help" };
//  CliParser parser(args);
//  EXPECT_EQ(0, parser.count_argument("-v", "--verbose"));
//}

//TEST_F(FunctionalTests, CountArgumentOccurrences) {
//  std::vector<std::string> args {
//    "program-name", "-h", "-verb", "--help", "--verbose", "-v"
//  };
//  std::vector<std::string> expected_remaining {"-h", "--help"};
//  CliParser parser(args);
//  EXPECT_EQ(3, parser.count_argument("-v", "-verb", "--verbose"));
//  EXPECT_EQ(expected_remaining, parser.remaining_args());
//}

//TEST_F(FunctionalTests, GetParamMissingFlag) {

//}

//TEST_F(FunctionalTests, GetParamMissingValue) {

//}
