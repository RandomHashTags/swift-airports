import XCTest
@testable import SwiftAirports

final class swift_airportsTests: XCTestCase {
    func testExample() throws {
        XCTAssertEqual(Airports.allCases.count, 118)
        
        XCTAssertEqual(Airports.getAllMentioned("lax", ignoreCase: false).count, 0)
        XCTAssertEqual(Airports.getAllMentioned("LAX", ignoreCase: false).count, 1)
        
        XCTAssertEqual(Airports.getAllMentioned("lax", ignoreCase: true).count, 1)
        XCTAssertEqual(Airports.getAllMentioned("LAX", ignoreCase: true).count, 1)
    }
}
