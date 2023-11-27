//
//  AirportsUnitedStatesOklahoma.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesOklahoma : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Oklahoma
    case lawton
    case willRogers
    case stillwater
    case tulsa
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.oklahoma
    }
    
    public var faa : String {
        switch self {
        case .lawton: return "LAW"
        case .willRogers: return "OKC"
        case .stillwater: return "SWO"
        case .tulsa: return "TUL"
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
        case .lawton: return "https://www.flylawton.org"
        case .willRogers: return "https://flyokc.com"
        case .stillwater: return "https://stillwaterok.gov/157/Airport"
        case .tulsa: return "https://flytulsa.com"
        }
    }
}
