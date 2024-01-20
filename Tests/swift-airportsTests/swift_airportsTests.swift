//
//  swift_airportsTests.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import XCTest
import SwiftAirports
import Kanna
import SwiftSovereignStates

final class swift_airportsTests : XCTestCase {
    func testExample() async throws {
        let airports_count:Int = 1375
        let all_airports:[any Airport] = Airports.allCases
        XCTAssertEqual(all_airports.count, airports_count)
        
        let iatas:[String] = all_airports.map({ $0.iata })
        let icaos:[String] = all_airports.map({ $0.icao })
        let iatas_set:Set<String> = Set(iatas)
        let icaos_set:Set<String> = Set(icaos)
        XCTAssertEqual(iatas_set.count, airports_count, "duplicates=\(get_duplicates(iatas, set: iatas_set))")
        XCTAssertEqual(icaos_set.count, airports_count, "duplicates=\(get_duplicates(icaos, set: icaos_set))")
        
        return;
        await extract(Country.australia, iata_index: 2, icao_index: 1, name_index: 3)
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
    
    func extract(_ country: Country, slug: String? = nil, iata_index: Int, icao_index: Int, name_index: Int) async {
        let country_name:String = country.name
        let url:String = "https://en.wikipedia.org/wiki/List_of_airports_in_" + (slug ?? country_name.replacingOccurrences(of: " ", with: "_"))
        guard let html:HTMLDocument = await request_html(url: url) else {
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
                   let iata:String = tds[iata_index].text?.split(separator: "[").first?.trimmingCharacters(in: .whitespacesAndNewlines), iata.count == 3,
                   let icao:String = tds[icao_index].text?.split(separator: "[").first?.trimmingCharacters(in: .whitespacesAndNewlines), icao.count == 4,
                   var airport:String = tds[name_index].text {
                    airport = airport.folding(options: [.diacriticInsensitive], locale: nil)
                        .replacingOccurrences(of: "\"", with: "")
                        .split(separator: "/")[0]
                        .split(separator: "(")[0]
                        .components(separatedBy: "National")[0]
                        .components(separatedBy: "International")[0]
                        .components(separatedBy: "Regional")[0]
                    
                        .components(separatedBy: "Airport")[0]
                        .components(separatedBy: "Airfield")[0]
                        .components(separatedBy: "Airbase")[0]
                        .components(separatedBy: "Airstrip")[0]
                        .components(separatedBy: "Heliport")[0]
                        .components(separatedBy: "Army")[0]
                        .components(separatedBy: "Naval")[0]
                        .components(separatedBy: "Air Base")[0]
                        .components(separatedBy: "Air Station")[0]
                        .components(separatedBy: "Aerodrome")[0]
                        .components(separatedBy: "[")[0]
                    let values:[Substring] = airport.split(separator: " ")
                    airport = values[0].trimmingCharacters(in: .whitespacesAndNewlines).lowercased() + (values.count > 1 ? values[1...].joined() : "").trimmingCharacters(in: .whitespacesAndNewlines)
                    
                    cases.append(airport)
                    iatas.append(iata)
                    icaos.append(icao)
                }
            }
        }
        
        print("\nimport SwiftSovereignStates\n\npublic enum Airports" + country_name.replacingOccurrences(of: " ", with: "") + " : String, Airport { // " + url)
        for value in cases {
            print("    case " + value)
        }
        
        
        print("\n    public var iata : String {")
        print("        switch self {")
        for index in iatas.indices {
            let string:String = "        case ." + cases[index] + ": return \"" + iatas[index] + "\""
            print(string)
        }
        print("        }")
        print("    }")
        
        print("\n    public var icao : String {")
        print("        switch self {")
        for index in icaos.indices {
            let string:String = "        case ." + cases[index] + ": return \"" + icaos[index] + "\""
            print(string)
        }
        print("        }")
        print("    }")
        
        print("}")
    }
}
