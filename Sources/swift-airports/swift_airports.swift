// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftSovereignStates

public enum Airports {
    public static var allCases : [any Airport] = {
        return SubdivisionsUnitedStates.allCases.flatMap({ $0.airports })
    }()
    
    /// Returns all airports that are mentioned in the `string`.
    public static func getAllMentioned(_ string: String, options: String.CompareOptions, locale: Locale = Locale.current) -> [any Airport] {
        return Airports.allCases.filter({ $0.isMentioned(in: string, options: options, locale: locale) })
    }
    public static func getAllMentioned2(_ string: String, options: String.CompareOptions, locale: Locale = Locale.current) -> [any Airport] {
        return Airports.allCases.filter({ $0.isMentioned2(in: string, options: options, locale: locale) })
    }
}

extension Airports {
    static func doesSatisfy(string_start_index: String.Index, string_end_index: String.Index, string: String, values: Set<String>) -> Bool {
        for value in values {
            let ranges:Set<Range<String.Index>> = string.all_ranges(of: value)
            for range in ranges {
                let prefix_index:String.Index? = string.index(range.lowerBound, offsetBy: -1, limitedBy: string_start_index)
                if (prefix_index == nil || !string[prefix_index!].isLetter) && (range.upperBound == string_end_index || !string[range.upperBound].isLetter) {
                    return true
                }
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
