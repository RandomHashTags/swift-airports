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
        //case .alaska:  return AirportsUnitedStatesAlaska.self
        case .minnesota: return AirportsUnitedStatesMinnesota.self
        case .montana: return AirportsUnitedStatesMontana.self
        default: return nil
        }
    }
    var airports : [any Airport] {
        return airportsType?.allCases as? [any Airport] ?? []
    }
}
