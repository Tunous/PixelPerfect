import XCTest
@testable import FoodMenuApp

final class FoodMenuAppTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FoodMenuApp().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
