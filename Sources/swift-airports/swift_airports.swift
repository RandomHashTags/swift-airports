// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftSovereignStates

public enum Airports {
    public static let allCases:[any Airport] = Country.allCases.flatMap({ $0.airports })
    
    /// Returns all airports that are mentioned in the `string`.
    public static func getAllMentioned(_ string: String, options: String.CompareOptions, locale: Locale = Locale.current) -> [any Airport] {
        let start_index:String.Index = string.startIndex, end_index:String.Index = string.endIndex
        return Airports.allCases.filter({
            let keywords:Set<String> = $0.keywords(forLocale: locale)
            for keyword in keywords {
                let keyword:String = keyword.folding(options: options, locale: locale)
                if Airports.doesSatisfy(string_start_index: start_index, string_end_index: end_index, string: string, value: keyword) {
                    return true
                }
            }
            return false
        })
    }
}

extension Airports {
    static func doesSatisfy(string_start_index: String.Index, string_end_index: String.Index, string: String, value: String) -> Bool {
        let ranges:Set<Range<String.Index>> = string.all_ranges(of: value)
        for range in ranges {
            let prefix_index:String.Index? = string.index(range.lowerBound, offsetBy: -1, limitedBy: string_start_index)
            if (prefix_index == nil || !string[prefix_index!].isLetter) && (range.upperBound == string_end_index || !string[range.upperBound].isLetter) {
                return true
            }
        }
        return false
    }
}
extension String {
    func all_ranges(of substring: String) -> Set<Range<Index>> {
        var ranges:Set<Range<Index>> = []
        var last_range:Index? = nil
        while let range:Range<Index> = range(of: substring, range: (last_range ?? self.startIndex)..<self.endIndex) {
            ranges.insert(range)
            last_range = range.upperBound
        }
        return ranges
    }
}

public extension Country { // https://en.wikipedia.org/wiki/Category:Lists_of_airports_by_country
    var airportsType : (any Airport.Type)? {
        switch self {
        case .kenya: return AirportsKenya.self
        case .qatar: return AirportsQatar.self
        case .netherlands: return AirportsNetherlands.self
        case .switzerland: return AirportsSwitzerland.self
        default: return nil
        }
    }
    
    var airports : [any Airport] {
        switch self {
        case .india: return SubdivisionsIndia.allCases.flatMap({ $0.airports })
        case .united_states: return SubdivisionsUnitedStates.allCases.flatMap({ $0.airports })
        default: return airportsType?.allCases as? [any Airport] ?? []
        }
    }
}
