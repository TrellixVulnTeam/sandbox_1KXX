/* -- LICENSE BEGIN --
 *
 * Copyright (c) 2015-2018, Lawrence Livermore National Security, LLC.
 *
 * Produced at the Lawrence Livermore National Laboratory
 *
 * Written by
 *   Michael Bentley (mikebentley15@gmail.com),
 *   Geof Sawaya (fredricflinstone@gmail.com),
 *   and Ian Briggs (ian.briggs@utah.edu)
 * under the direction of
 *   Ganesh Gopalakrishnan
 *   and Dong H. Ahn.
 *
 * LLNL-CODE-743137
 *
 * All rights reserved.
 *
 * This file is part of FLiT. For details, see
 *   https://pruners.github.io/flit
 * Please also read
 *   https://github.com/PRUNERS/FLiT/blob/master/LICENSE
 *
 * Redistribution and use in source and binary forms, with or
 * without modification, are permitted provided that the following
 * conditions are met:
 *
 * - Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the disclaimer below.
 *
 * - Redistributions in binary form must reproduce the above
 *   copyright notice, this list of conditions and the disclaimer
 *   (as noted below) in the documentation and/or other materials
 *   provided with the distribution.
 *
 * - Neither the name of the LLNS/LLNL nor the names of its
 *   contributors may be used to endorse or promote products derived
 *   from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
 * CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL LAWRENCE LIVERMORE NATIONAL
 * SECURITY, LLC, THE U.S. DEPARTMENT OF ENERGY OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 * THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Additional BSD Notice
 *
 * 1. This notice is required to be provided under our contract
 *    with the U.S. Department of Energy (DOE). This work was
 *    produced at Lawrence Livermore National Laboratory under
 *    Contract No. DE-AC52-07NA27344 with the DOE.
 *
 * 2. Neither the United States Government nor Lawrence Livermore
 *    National Security, LLC nor any of their employees, makes any
 *    warranty, express or implied, or assumes any liability or
 *    responsibility for the accuracy, completeness, or usefulness of
 *    any information, apparatus, product, or process disclosed, or
 *    represents that its use would not infringe privately-owned
 *    rights.
 *
 * 3. Also, reference herein to any specific commercial products,
 *    process, or services by trade name, trademark, manufacturer or
 *    otherwise does not necessarily constitute or imply its
 *    endorsement, recommendation, or favoring by the United States
 *    Government or Lawrence Livermore National Security, LLC. The
 *    views and opinions of authors expressed herein do not
 *    necessarily state or reflect those of the United States
 *    Government or Lawrence Livermore National Security, LLC, and
 *    shall not be used for advertising or product endorsement
 *    purposes.
 *
 * -- LICENSE END --
 */

/**
 * A simple test harness for running tests against the FLiT framework.
 *
 * This framework is to create a single test executable for each test source
 * file, very much like how it is suggested to do with QtTest.  This framework
 * is implemented as simply as it can be so that it can be verified by
 * inspection and not require heavy testing.
 *
 * Usage instructions:
 *
 * Include it as usual with
 *
 *   #include "test_harness.h"
 *
 * This file define the main() function as well as the following functions:
 *
 * TH_VERIFY(bool)                  - your standard assertion
 * TH_EQUAL(actual, expected)       - assert (actual == expected)
 * TH_NOT_EQUAL(actual, unexpected) - assert (actual != expected)
 * TH_FAIL(description)             - a failed assertion with a description
 * TH_SKIP(description)             - exit the test early with a description
 * TH_THROWS(expression, exception) - fail unless the expression throws
 *                                    exception
 *
 * These macros can be called from the top-level or from helper functions
 *
 * A test is simply a void function taking no arguments.  It is registered with
 * the macro
 *
 * TH_REGISTER(test_name)
 *
 * Here is an example:
 *
 *   #include "test_harness.h"
 *   void test_add() {
 *     TH_EQUAL(1 + 2, 3);
 *   }
 *   TH_REGISTER(test_add)
 *
 * That is all that is required to implement and add a test.  Tests will
 * execute in alphabetical order.
 */

#ifndef TEST_HARNESS_H
#define TEST_HARNESS_H

// Assertion definitions
#define TH_VERIFY_MSG(x, msg) \
  do {                                                         \
    if (!(x)) {                                                \
      throw th::AssertionError(__FILE__, __func__, __LINE__, msg);\
    }                                                          \
  } while (false)
#define TH_VERIFY(x) TH_VERIFY_MSG(x, "TH_VERIFY("#x")")
#define TH_EQUAL(a, b) TH_VERIFY_MSG((a) == (b), "TH_EQUAL("#a", "#b")")
#define TH_NOT_EQUAL(a, b) TH_VERIFY_MSG((a) != (b), "TH_NOT_EQUAL("#a", "#b")")
#define TH_FAIL(msg) \
  TH_VERIFY_MSG(false, std::string("TH_FAIL(\"") + msg + "\")")
#define TH_SKIP(msg) throw th::SkipError(__FILE__, __func__, __LINE__, msg)
#define TH_THROWS(exp, exception)                              \
  do {                                                         \
    try {                                                      \
      exp;                                                     \
      TH_VERIFY_MSG(false, #exp " did not throw " #exception); \
    } catch (exception&) {}                                    \
  } while(false)
// Adds the test to map th::tests before main() is called
#define TH_REGISTER(func) static th::TestRegistrar registrar_##func(#func, func)
#define TH_TEST(name) \
  void name(); \
  TH_REGISTER(name); \
  void name()

// includes

#include <exception>
#include <iostream>
#include <map>
#include <sstream>
#include <string>
#include <typeinfo>
#include <vector>

// namespace definitions
namespace th {
  using test = void (*)(void);
  std::string current_test;
  std::map<std::string, th::test> tests;

  // Signals an assertion failure
  class AssertionError : public std::exception {
  public:
    AssertionError(std::string file, std::string func, long line,
                   std::string msg)
      : _file(file), _func(func), _line(line), _msg(msg)
    {
      std::ostringstream msg_stream;
      msg_stream
        << "Assertion failure: " << _file << ":"
        << _line << " in " << _func << " - " << _msg;
      _what = msg_stream.str();
    }
    virtual const char* what() const noexcept override {
      return _what.c_str();
    }
  protected:
    std::string _file;
    std::string _func;
    long _line;
    std::string _msg;
    std::string _what;
  };

  // Signals a test that is skipped
  class SkipError : public AssertionError {
  public:
    SkipError(std::string file, std::string func, long line, std::string msg)
      : AssertionError(file, func, line, msg)
    {
      std::ostringstream msg_stream;
      msg_stream
        << "Test skipped: " << _file << ":"
        << _line << " in " << _func << " - " << _msg;
      _what = msg_stream.str();
    }
  };

  struct TestRegistrar {
    TestRegistrar(const std::string &name, test func) {
      tests[name] = func;
    }
  };

}; // end of namespace th

void printUsage(char *progname) {
  std::cout <<
    "Usage:\n"
    "  " << progname << " --help\n"
    "  " << progname << " [--verbose|--quiet|--semi-quiet|--list-tests]\n"
    "\n"
    "Description:\n"
    "  Runs unit tests and reports back.\n"
    "\n"
    "Return Code:\n"
    "  Returns the number of failed tests.\n"
    "\n"
    "Options:\n"
    "  -h, --help      Print this usage and exit\n"
    "  -v, --verbose   Print verbose information\n"
    "  --semi-quiet    Only print if something goes wrong\n"
    "  -q, --quiet     Do not print anything, just use return codes\n"
    "  --list-tests    Only list tests and exit; don't run anything\n";
}

int main(int argCount, char *argList[]) {
  // quiet implies semiquiet
  bool quiet = false;
  bool semiquiet = false;
  bool verbose = false;
  for (int i = 1; i < argCount; i++) {
    if (argList[i] == std::string("--quiet") ||
        argList[i] == std::string("-q"))
    {
      quiet = true;
      semiquiet = true;
      verbose = false;
    }
    else if (argList[i] == std::string("--semi-quiet")) {
      quiet = false;
      semiquiet = true;
      verbose = false;
    }
    else if (argList[i] == std::string("--verbose") ||
             argList[i] == std::string("-v"))
    {
      quiet = false;
      semiquiet = false;
      verbose = true;
    }
    else if (argList[i] == std::string("--help") ||
             argList[i] == std::string("-h"))
    {
      printUsage(argList[0]);
      return 0;
    }
    else if (argList[i] == std::string("--list-tests")) {
      for (auto &test_pair : th::tests) {
        std::cout << test_pair.first << std::endl;
      }
      return 0;
    }
    else {
      std::cerr << "Error: Unrecognized argument: " << argList[i] << std::endl;
      return 1;
    }
  }
  std::vector<std::string> failed_tests;
  std::vector<std::string> skipped_tests;

  for (auto &test_pair : th::tests) {
    auto &test_name = test_pair.first;
    auto &test_ptr = test_pair.second;
    th::current_test = test_name;
    try {
      test_ptr();
      if (verbose) {
        std::cout << test_name << ": PASSED\n";
      }
    } catch (const th::SkipError &err) {
      if (!semiquiet) {
        std::cout << test_name << ": " << err.what() << "\n";
      }
      skipped_tests.emplace_back(test_name);
    } catch (const th::AssertionError &err) {
      if (!quiet) {
        std::cout << test_name << ":\n  " << err.what() << "\n";
      }
      failed_tests.emplace_back(test_name);
    } catch (const std::exception &err) {
      if (!quiet) {
        std::cout << test_name << ": Uncaught exception\n  "
                  << typeid(err).name() << ": " << err.what() << "\n";
      }
      failed_tests.emplace_back(test_name);
    } catch (...) {
      if (!quiet) {
        std::cout << test_name << ": Uncaught throw (not a std::exception)\n";
      }
      failed_tests.emplace_back(test_name);
    }
  }

  // print results
  if (!semiquiet) {
    if (failed_tests.size() > 0 || skipped_tests.size() > 0) {
      std::cout << "\n----------------------------------------"
                   "----------------------------------------\n\n";
    }
    if (failed_tests.size() > 0) {
      std::cout << "Failed tests:\n";
      for (auto &test_name : failed_tests) {
        std::cout << "  " << test_name << std::endl;
      }
      std::cout << "\n";
    }
    if (skipped_tests.size() > 0) {
      std::cout << "Skipped tests:\n";
      for (auto &test_name : skipped_tests) {
        std::cout << "  " << test_name << std::endl;
      }
      std::cout << "\n";
    }

    int test_successes = th::tests.size() - failed_tests.size()
                         - skipped_tests.size();
    std::cout << "Test Results:\n"
              << "  failures:   " << failed_tests.size() << std::endl
              << "  successes:  " << test_successes << std::endl
              << "  skips:      " << skipped_tests.size() << std::endl;
  }

  return failed_tests.size();
}

#endif // TEST_HARNESS_H
