// The Swift Programming Language
// https://docs.swift.org/swift-book

public enum Airports {
    static var all:[any Airport] = {
        return []
    }()
}

extension Airports {
    static func doesEqual(string: String, values: Set<String>, option: String.CompareOptions) -> Bool {
        return values.first(where: { string.compare($0, options: option) == .orderedSame }) != nil
    }
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
