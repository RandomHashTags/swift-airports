//
//  AirportsUnitedStatesNewJersey.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesNewJersey : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_New_Jersey
    case atlanticCity
    case newarkLiberty
    case trentonMercer
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.new_jersey
    }
    
    public var faa : String {
        switch self {
        case .atlanticCity: return "ACY"
        case .newarkLiberty: return "EWR"
        case .trentonMercer: return "TTN"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String? {
        switch self {
        case .atlanticCity: return "https://www.sjta.com/acairport/"
        case .newarkLiberty: return "https://newarkairport.com"
        case .trentonMercer: return "https://www.mercercounty.org/departments/transportation-and-infrastructure/trenton-mercer-airport"
        }
    }
}
