import XCTest
import SwiftAirports

final class swift_airportsTests: XCTestCase {
    func testExample() throws {
        
        /*try await benchmark_compare_is_faster(key1: "getAllMentioned", {
            let _:[any Airport] = Airports.getAllMentioned("LAX", options: .literal)
        }, key2: "getAllMentioned2") {
            let _:[any Airport] = Airports.getAllMentioned2("LAX", options: .literal)
        }*/
        
        XCTAssertEqual(Airports.allCases.count, 340)
        
        XCTAssertEqual(get_all_mentioned("lax", options: [.literal]).count, 0)
        XCTAssertEqual(get_all_mentioned("llax", options: [.literal]).count, 0)
        XCTAssertEqual(get_all_mentioned("LAX", options: [.literal]).count, 1)
        XCTAssertEqual(get_all_mentioned("LLAX", options: [.literal]).count, 1)
        
        XCTAssertEqual(get_all_mentioned("làx", options: [.caseInsensitive]).count, 0)
        XCTAssertEqual(get_all_mentioned("lààx", options: [.caseInsensitive]).count, 0)
        XCTAssertEqual(get_all_mentioned("lax", options: [.caseInsensitive]).count, 1)
        XCTAssertEqual(get_all_mentioned("llax", options: [.caseInsensitive]).count, 1)
        
        XCTAssertEqual(get_all_mentioned("LÀX", options: [.diacriticInsensitive, .literal]).count, 1)
        XCTAssertEqual(get_all_mentioned("làx", options: [.diacriticInsensitive, .caseInsensitive]).count, 1)
        
        XCTAssertEqual(get_all_mentioned("_______________________________________________________________LÀX", options: [.literal]).count, 0)
        XCTAssertEqual(get_all_mentioned("_______________________________________________________________LAX", options: [.literal]).count, 1)
        XCTAssertEqual(get_all_mentioned("_______________________________________________________________LÀX", options: [.diacriticInsensitive, .literal]).count, 1)
    }
    
    private func get_all_mentioned(_ string: String, options: String.CompareOptions) -> [any Airport] {
        let string:String = string.folding(options: options, locale: nil)
        return Airports.getAllMentioned(string, options: options)
    }
    
    func test() {
        let options:String.CompareOptions = [.diacriticInsensitive, .caseInsensitive]
        let string1:String = "yoink LÅX eiurgsepirugesriaweunfeaireiurgsepirugesriaweunfeair".folding(options: options, locale: nil)
        measure {
            let _:[any Airport] = Airports.getAllMentioned(string1, options: options)
        }
    }
}
