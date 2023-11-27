// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftSovereignStates

public enum Airports {
    static var allCases : [any Airport] = {
        return SubdivisionsUnitedStates.allCases.flatMap({ $0.airports })
    }()
    
    /// Returns all airports that are mentioned in the `string`.
    static func getAllMentioned(_ string: String, locale: Locale = Locale.current, ignoreCase: Bool = true) -> [any Airport] {
        let options:String.CompareOptions = ignoreCase ? .caseInsensitive : .literal
        return Airports.allCases.filter({ $0.isMentioned(in: string, locale: locale, exact: false, options: options) })
    }
}

extension Airports {
    static func doesEqual(string: String, values: Set<String>, options: String.CompareOptions) -> Bool {
        return values.first(where: { string.compare($0, options: options) == .orderedSame }) != nil
    }
    static func doesSatisfy(string_start_index: String.Index, string_end_index: String.Index, string: String, values: Set<String>, options: String.CompareOptions) -> Bool {
        for value in values {
            let ranges:Set<Range<String.Index>> = string.all_ranges(of: value, options: options)
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
    func all_ranges(of string: String, options: String.CompareOptions) -> Set<Range<Index>> {
        var ranges:Set<Range<Index>> = []
        var last_range:Index? = nil
        while let range:Range<Index> = range(of: string, options: options, range: (last_range ?? self.startIndex)..<self.endIndex) {
            ranges.insert(range)
            last_range = range.upperBound
        }
        return ranges
    }
}
