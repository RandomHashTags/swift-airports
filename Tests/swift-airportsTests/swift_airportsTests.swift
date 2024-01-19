import XCTest
import SwiftAirports
import Kanna

final class swift_airportsTests: XCTestCase {
    func testExample() async throws {
        let airports_count:Int = 816
        let all_airports:[any Airport] = Airports.allCases
        XCTAssertEqual(all_airports.count, airports_count)
        
        let iatas:[String] = all_airports.map({ $0.iata })
        let icaos:[String] = all_airports.map({ $0.icao })
        let iatas_set:Set<String> = Set(iatas)
        let icaos_set:Set<String> = Set(icaos)
        XCTAssertEqual(iatas_set.count, airports_count, "duplicates=\(get_duplicates(iatas, set: iatas_set))")
        XCTAssertEqual(icaos_set.count, airports_count, "duplicates=\(get_duplicates(icaos, set: icaos_set))")
        
        /*try await benchmark_compare_is_faster(key1: "getAllMentioned", {
            let _:String = AirportsIndiaJammuAndKashmir.jammu.icao_suffix
        }, key2: "getAllMentioned2") {
            let _:String = AirportsIndiaJammuAndKashmir.jammu.icao
        }*/
        
        return;
        await extract(slug: "List_of_airports_in_Fiji", iata_index: 3, icao_index: 2, name_index: 4)
    }
    private func get_duplicates(_ array: [String], set: Set<String>) -> [String] {
        var array:[String] = array
        for value in set {
            let index:Int = array.firstIndex(of: value)!
            array.remove(at: index)
        }
        return array
    }
    
    func test_mentions() {
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
    
    func test_iata() {
        let all_airports:[any Airport] = Airports.allCases
        let locale:Locale = Locale.current
        for airport in all_airports {
            XCTAssertEqual(airport.iata.count, 3, airport.country.name + ";" + airport.subdivisionLevel1.name + ";" + airport.name(forLocale: locale))
        }
    }
    func test_icao() {
        let all_airports:[any Airport] = Airports.allCases
        let locale:Locale = Locale.current
        for airport in all_airports {
            XCTAssertEqual(airport.icao.count, 4, airport.country.name + ";" + airport.subdivisionLevel1.name + ";" + airport.name(forLocale: locale))
        }
    }
}
extension swift_airportsTests {
    func test() {
        let options:String.CompareOptions = [.diacriticInsensitive, .caseInsensitive]
        let string1:String = "yoink LÅX eiurgsepirugesriaweunfeaireiurgsepirugesriaweunfeair"
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


extension swift_airportsTests {
    private func make_request<T : Decodable>(url: String) async -> T? {
        guard let url:URL = URL(string: url),
              let data:Data = await make_request(request: URLRequest(url: url)) else {
            return nil
        }
        return try? JSONDecoder().decode(T.self, from: data)
    }
    private func request_html(url: String) async -> HTMLDocument? {
        guard let url:URL = URL(string: url),
              let data:Data = await make_request(request: URLRequest(url: url)),
              let html:String = String(data: data, encoding: .utf8) else {
            return nil
        }
        return try? HTML(html: html, encoding: .utf8)
    }
    private func make_request(request: URLRequest) async -> Data? {
        return try? await withCheckedThrowingContinuation({ continuation in
            let dataTask:URLSessionDataTask = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data:Data = data, let _:URLResponse = response else {
                    let error:Error = error ?? URLError(.badServerResponse)
                    return continuation.resume(throwing: error)
                }
                continuation.resume(returning: data)
            }
            dataTask.resume()
        })
    }
    
    func extract(slug: String, iata_index: Int, icao_index: Int, name_index: Int) async {
        guard let html:HTMLDocument = await request_html(url: "https://en.wikipedia.org/wiki/" + slug) else {
            return
        }
        let test:XPathObject = html.css("div.mw-parser-output table.sortable tbody")
        
        var cases:[String] = []
        var iatas:[String] = []
        var icaos:[String] = []
        for table in test {
            let trs:XPathObject = table.css("tr")
            for tr in trs {
                let tds:XPathObject = tr.css("td")
                if tds.count > max(iata_index, icao_index, name_index),
                   let iata:String = tds[iata_index].text?.trimmingCharacters(in: .whitespacesAndNewlines), iata.count == 3,
                   let icao:String = tds[icao_index].text?.trimmingCharacters(in: .whitespacesAndNewlines), icao.count == 4,
                   var airport:String = tds[name_index].text {
                    airport = airport.folding(options: [.diacriticInsensitive], locale: nil)
                        .replacingOccurrences(of: "\"", with: "")
                        .split(separator: "/")[0]
                        .components(separatedBy: "Airport")[0]
                        .components(separatedBy: "Airfield")[0]
                        .components(separatedBy: "Air Base")[0]
                        .components(separatedBy: "Aerodrome")[0]
                        .components(separatedBy: "International")[0]
                        .components(separatedBy: "Regional")[0]
                        .components(separatedBy: "[")[0]
                    let values:[Substring] = airport.split(separator: " ")
                    airport = values[0].lowercased() + (values.count > 1 ? values[1...].joined() : "")
                    
                    cases.append(airport)
                    iatas.append(iata)
                    icaos.append(icao)
                }
            }
        }
        
        print("CASES")
        for value in cases {
            print("case " + value)
        }
        
        print("")
        print("IATA")
        for index in iatas.indices {
            let string:String = "case ." + cases[index] + ": return \"" + iatas[index] + "\""
            print(string)
        }
        
        print("")
        print("ICAO")
        for index in icaos.indices {
            let string:String = "case ." + cases[index] + ": return \"" + icaos[index] + "\""
            print(string)
        }
    }
}
