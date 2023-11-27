//
//  AirportsUnitedStates.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import Foundation
import SwiftSovereignStates

public protocol AirportUnitedStates : Airport where SubdivisionLevel1Type == SubdivisionsUnitedStates {
    /// The location identifier assigned by the Federal Aviation Administration (FAA).
    var faa : String { get }
}
public extension AirportUnitedStates {
    var country : Country {
        return Country.united_states
    }
    
    func keywordsAdditional(forLocale locale: Locale) -> Set<String>? {
        return [faa]
    }
}


public extension SubdivisionsUnitedStates {
    var airportsType : (any Airport.Type)? {
        switch self {
        case .alabama: return AirportsUnitedStatesAlabama.self
        case .alaska:  return AirportsUnitedStatesAlaska.self
        case .arizona: return AirportsUnitedStatesArizona.self
        case .arkansas: return AirportsUnitedStatesArkansas.self
        case .california: return AirportsUnitedStatesCalifornia.self
        case .colorado: return AirportsUnitedStatesColorado.self
        case .connecticut: return AirportsUnitedStatesConnecticut.self
        case .delaware: return AirportsUnitedStatesDelaware.self
        case .florida: return nil
        case .georgia: return nil
        case .hawaii: return AirportsUnitedStatesHawaii.self
        case .idaho: return AirportsUnitedStatesIdaho.self
        case .illinois: return nil
        case .indiana: return nil
        case .iowa: return nil
        case .kansas: return nil
        case .kentucky: return nil
        case .louisiana: return nil
        case .maine: return nil
        case .maryland: return nil
        case .massachusetts: return nil
        case .michigan: return nil
        case .minnesota: return AirportsUnitedStatesMinnesota.self
        case .mississippi: return nil
        case .missouri: return nil
        case .montana: return AirportsUnitedStatesMontana.self
        case .nebraska: return nil
        case .nevada: return nil
        case .new_hampshire: return nil
        case .new_jersey: return nil
        case .new_mexico: return nil
        case .new_york: return nil
        case .north_carolina: return nil
        case .north_dakota: return nil
        case .ohio: return nil
        case .oklahoma: return nil
        case .oregon: return nil
        case .pennsylvania: return nil
        case .rhode_island: return nil
        case .south_carolina: return nil
        case .south_dakota: return nil
        case .tennessee: return nil
        case .texas: return nil
        case .utah: return nil
        case .vermont: return AirportsUnitedStatesVermont.self
        case .virginia: return nil
        case .washington: return nil
        case .washington_dc: return nil
        case .west_virginia: return nil
        case .wisconsin: return nil
        case .wyoming: return nil
            
        case .american_samoa: return nil
        case .guam: return nil
        case .marshall_islands: return nil
        case .micronesia: return nil
        case .northern_mariana_islands: return nil
        case .palau: return nil
        case .puerto_rico: return nil
        case .united_states_virgin_islands: return nil
        }
    }
    var airports : [any Airport] {
        return airportsType?.allCases as? [any Airport] ?? []
    }
}
