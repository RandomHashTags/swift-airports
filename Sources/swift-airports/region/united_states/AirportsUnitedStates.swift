//
//  AirportsUnitedStates.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import Foundation
import SwiftSovereignStates

public protocol AirportUnitedStates : Airport {
    /// The location identifier assigned by the Federal Aviation Administration (FAA).
    var faa : String { get }
}
public extension AirportUnitedStates {
    func keywordsAdditional(forLocale locale: Locale) -> Set<String>? {
        return [faa]
    }
}


public extension SubdivisionsUnitedStates {
    var airportsType : (any Airport.Type)? {
        switch self {
        case .alabama: return AirportsUnitedStatesAlabama.self
        //case .alaska:  return AirportsUnitedStatesAlaska.self
        default: return nil
        }
    }
    var airports : [any Airport] {
        return airportsType?.allCases as? [any Airport] ?? []
    }
}
