//
//  Airport.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import Foundation
import SwiftSovereignStates

public protocol Airport : CaseIterable, RawRepresentable where RawValue == String {
    associatedtype SubdivisionLevel1Type : SovereignStateSubdivision
    
    var country : Country { get }
    var subdivision_level_1 : SubdivisionLevel1Type { get }
    //var citiesServed : [any SovereignStateCity] { get }
    
    func name(forLocale locale: Locale) -> String
    func aliases(forLocale locale: Locale) -> Set<String>?
    
    func keywords(forLocale locale: Locale) -> Set<String>
    func keywordsAdditional(forLocale locale: Locale) -> Set<String>?
    
    func isMentioned(locale: Locale, in string: String) -> Bool
    
    /// The airport code assigned by the International Air Transport Association (IATA).
    var iata : String { get }
    /// The location indicator assigned by the International Civil Aviation Organization (ICAO).
    var icao : String { get }
    
    var website : String { get }
}

public extension Airport {
    func name(forLocale locale: Locale) -> String {
        return rawValue + " Airport" // TODO: fix
    }
    
    func aliases(forLocale locale: Locale) -> Set<String>? {
        return nil
    }
    
    func keywords(forLocale locale: Locale) -> Set<String> {
        var set:Set<String> = [name(forLocale: locale), iata, icao]
        if let aliases:Set<String> = aliases(forLocale: locale) {
            set.formUnion(aliases)
        }
        if let additional:Set<String> = keywordsAdditional(forLocale: locale) {
            set.formUnion(additional)
        }
        return set
    }
    
    func isMentioned(locale: Locale, in string: String) -> Bool {
        return Airports.doesSatisfy(string_start_index: string.startIndex, string_end_index: string.endIndex, string: string.lowercased(), values: keywords(forLocale: locale))
    }
    func isMentionedExactly(locale: Locale, in string: String, ignoreCase: Bool) -> Bool {
        return Airports.doesEqual(string: string, values: keywords(forLocale: locale), option: ignoreCase ? .caseInsensitive : .literal)
    }
    
    var website : String? {
        return nil
    }
}
