import XCTest
@testable import kwarchart

final class kwarchartTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(kwarchart_ios().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
