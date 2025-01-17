import XCTest

#if !SKIP_QUOTE_TESTS
import QuoteTests
let quoteTests = [
    testCase(CompilationTests.allTests),
    testCase(QuoteTests.DescriptionTests.allTests),
    testCase(StructureTests.allTests),
]
#else
let quoteTests = [XCTestCaseEntry]()
#endif

#if !SKIP_SIL_TESTS
import SILTests
let silTests = [
    testCase(BitcodeTests.allTests),
    testCase(BitsTests.allTests),
    testCase(BitstreamTests.allTests),
    testCase(SILTests.DescriptionTests.allTests),
    testCase(SILParserTests.allTests),
    testCase(InstructionTests.allTests),
    testCase(ModuleTests.allTests),
    testCase(PrinterTests.allTests),
    testCase(SExprTests.allTests),
    testCase(SILAnalysisTests.allTests),
]
#else
let silTests = [XCTestCaseEntry]()
#endif

let tests = quoteTests + silTests
XCTMain(tests)
