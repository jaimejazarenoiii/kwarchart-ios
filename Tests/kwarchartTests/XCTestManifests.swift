import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(kwarchart_iosTests.allTests),
    ]
}
#endif
