//
//  AirportsIndiaLadakh.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaLadakh : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case kushokBakulaRimpochee
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.ladakh
    }
    
    public var iata : String {
        switch self {
        case .kushokBakulaRimpochee: return "IXL"
        }
    }
    
    public var icao : String {
        switch self {
        case .kushokBakulaRimpochee: return "VILH"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
