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
    var subdivisionLevel1 : SubdivisionLevel1Type { get }
    //var citiesServed : [any SovereignStateCity] { get }
    
    func name(forLocale locale: Locale) -> String
    func aliases(forLocale locale: Locale) -> Set<String>?
    
    func keywords(forLocale locale: Locale) -> Set<String>
    func keywordsAdditional(forLocale locale: Locale) -> Set<String>?
    
    /// Whether this Airport is mentioned or not in the `string`.
    func isMentioned(in string: String, locale: Locale, exact: Bool, options: String.CompareOptions) -> Bool
    
    /// The airport code assigned by the International Air Transport Association (IATA).
    var iata : String { get }
    /// The location indicator assigned by the International Civil Aviation Organization (ICAO).
    var icao : String { get }
    
    var website : String? { get }
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
    
    func isMentioned(in string: String, locale: Locale, exact: Bool, options: String.CompareOptions) -> Bool {
        let keywords:Set<String> = keywords(forLocale: locale)
        if exact {
            return Airports.doesEqual(string: string, values: keywords, options: options)
        } else {
            return Airports.doesSatisfy(string_start_index: string.startIndex, string_end_index: string.endIndex, string: string, values: keywords, options: options)
        }
    }
}
