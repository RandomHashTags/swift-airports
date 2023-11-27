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
}
