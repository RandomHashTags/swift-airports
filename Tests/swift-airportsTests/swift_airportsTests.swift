import XCTest
import SwiftAirports

final class swift_airportsTests: XCTestCase {
    func testExample() async throws {
        
        let all_airports:[any Airport] = Airports.allCases
        XCTAssertEqual(all_airports.count, 393)
        
        /*try await benchmark_compare_is_faster(key1: "getAllMentioned", {
            let _:[any Airport] = Airports.getAllMentioned("LAX", options: .literal)
        }, key2: "getAllMentioned2") {
            let _:[any Airport] = Airports.getAllMentioned2("LAX", options: .literal)
        }*/
        
        XCTAssertEqual(get_all_mentioned("lax", options: [.literal]).count, 0)
        XCTAssertEqual(get_all_mentioned("llax", options: [.literal]).count, 0)
        XCTAssertEqual(get_all_mentioned("LAX", options: [.literal]).count, 1)
        XCTAssertEqual(get_all_mentioned("SNORLAX", options: [.literal]).count, 0)
        
        XCTAssertEqual(get_all_mentioned("BRN", options: [.literal]).count, 1)
        XCTAssertEqual(get_all_mentioned("LAX BRN", options: [.literal]).count, 2)
        
        XCTAssertEqual(get_all_mentioned("làx", options: [.caseInsensitive]).count, 0)
        XCTAssertEqual(get_all_mentioned("lààx", options: [.caseInsensitive]).count, 0)
        XCTAssertEqual(get_all_mentioned("lax", options: [.caseInsensitive]).count, 1)
        XCTAssertEqual(get_all_mentioned("snorlax", options: [.caseInsensitive]).count, 0)
        
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
    
    @available(macOS 13.0, *)
    private func benchmark(key: String, _ code: @escaping () async throws -> Void, will_print: Bool = true) async throws -> (key: String, min: Int64, max: Int64, median: Int64, average: Int64, total: Int64) {
        let iteration_count:Int = 10
        let clock:ContinuousClock = ContinuousClock()
        let _:Duration = try await clock.measure(code)
        var timings:[Int64] = [Int64]()
        timings.reserveCapacity(iteration_count)
        for _ in 1...iteration_count {
            let result:Duration = try await clock.measure(code)
            let attoseconds:Int64 = result.components.attoseconds
            let nanoseconds:Int64 = attoseconds / 1_000_000_000
            timings.append(nanoseconds)
        }
        timings = timings.sorted(by: { $0 < $1 })
        let minimum:Int64 = timings.first!, maximum:Int64 = timings.last!
        let median:Int64 = timings[timings.count/2]
        let sum:Int64 = timings.reduce(0, +)
        let average:Int64 = Int64( Double(sum) / Double(timings.count) )
        if will_print {
            let key:String = key + (1...(80-key.count)).map({ _ in " " }).joined()
            
            let formatter:NumberFormatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.maximumFractionDigits = 20
            
            let average_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, average)
            let minimum_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, minimum)
            let maximum_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, maximum)
            let median_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, median)
            let total_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, sum)
            
            print("SwiftSovereignStates;benchmark( " + key + "| min=" + minimum_time_elapsed + " | max=" + maximum_time_elapsed + " | median=" + median_time_elapsed + " | average=" + average_time_elapsed + " | total=" + total_time_elapsed)
        }
        return (key: key, min: minimum, max: maximum, median: median, average: average, total: sum)
    }
    @available(macOS 13.0, *)
    private func benchmark_compare_is_faster(maximum_iterations: Int = 100, key1: String, _ code1: @escaping () async throws -> Void, key2: String, code2: @escaping () async throws -> Void) async throws {
        var faster_count:Int = 0, faster_average:Int64 = 0
        for _ in 1...maximum_iterations {
            let faster:(Bool, Int64) = try await benchmark_compare(key1: key1, code1, key2: key2, code2: code2, print_to_console: false)
            faster_count += faster.0 ? 1 : 0
            faster_average += faster.1
        }
        let formatter:NumberFormatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 20
        let average_string:String = get_benchmark_formatted_string(formatter: formatter, faster_average / Int64(maximum_iterations))
        print("SwiftSovereignStates;benchmark_compare_is_faster;     " + key1 + " is faster " + faster_count.description + "/" + maximum_iterations.description + " on average by " + average_string)
    }
    @available(macOS 13.0, *)
    private func benchmark_compare(key1: String, _ code1: @escaping () async throws -> Void, key2: String, code2: @escaping () async throws -> Void, print_to_console: Bool = true) async throws -> (Bool, Int64) {
        async let test1 = benchmark(key: key1, code1, will_print: false)
        async let test2 = benchmark(key: key2, code2, will_print: false)
        let ((key1, min1, max1, median1, average1, total1) , (_, min2, max2, median2, average2, total2)) = try await (test1, test2)
        
        if print_to_console {
            let formatter:NumberFormatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.maximumFractionDigits = 20
            
            let average_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(average1, average2) - min(average1, average2))
            let minimum_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(min1, min2) - min(min1, min2))
            let maximum_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(max1, max2) - min(max1, max2))
            let median_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(median1, median2) - min(median1, median2))
            let total_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(total1, total2) - min(total1, total2), separation_count: 20)
            
            let key:String = key1 + (1...(70-key1.count)).map({ _ in " " }).joined()
            var string:String = "SwiftSovereignStates;benchmark_compare( " + key + "| "
            string.append("min=" + (min1 < min2 ? "🟢" : "🔴") + "by " + minimum_time_diff)
            string.append(" | max=" + (max1 < max2 ? "🟢" : "🔴") + "by " + maximum_time_diff)
            string.append(" | median=" + (median1 < median2 ? "🟢" : "🔴") + "by " + median_time_diff)
            string.append(" | average=" + (average1 < average2 ? "🟢" : "🔴") + "by " + average_time_diff)
            string.append(" | total=" + (total1 < total2 ? "🟢" : "🔴") + "by " + total_time_diff)
            print(string)
        }
        return (average1 <= average2, average2 - average1)
    }
    private func get_benchmark_formatted_string(formatter: NumberFormatter, _ value: Any, separation_count: Int = 20) -> String {
        let string:String = formatter.string(for: value)! + "ns"
        return string + (0..<(separation_count - (string.count))).map({ _ in " " }).joined()
    }
}
