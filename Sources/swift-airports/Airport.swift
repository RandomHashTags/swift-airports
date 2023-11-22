//
//  Airport.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import Foundation
import SwiftSovereignStates

public protocol Airport : CaseIterable, RawRepresentable where RawValue == String {
    var country : Country { get }
    var subdivision_level_1 : any SovereignStateSubdivision { get }
    var city : any SovereignStateCity { get }
    
    func name(forLocale locale: Locale) -> String
    
    func keywords(forLocale locale: Locale) -> Set<String>
    func keywordsAdditional(forLocale locale: Locale) -> Set<String>?
    
    /// The airport code assigned by the International Air Transport Association (IATA).
    var iata : String { get }
    /// The location indicator assigned by the International Civil Aviation Organization (ICAO).
    var icao : String { get }
}

public extension Airport {
    func name(forLocale locale: Locale) -> String {
        return rawValue + " Airport" // TODO: fix
    }
    
    func keywords(forLocale locale: Locale) -> Set<String> {
        var set:Set<String> = [name(forLocale: locale), iata, icao]
        if let additional:Set<String> = keywordsAdditional(forLocale: locale) {
            set.formUnion(additional)
        }
        return set
    }
}
