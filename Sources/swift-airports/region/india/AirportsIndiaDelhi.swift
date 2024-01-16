//
//  AirportsIndiaDelhi.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaDelhi : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case indiraGandhi
    
    public var subdivisionLevel1: SubdivisionsIndia {
        return SubdivisionsIndia.delhi
    }
    
    public var iata : String {
        switch self {
        case .indiraGandhi: return "DEL"
        }
    }
    
    public var icao : String {
        switch self {
        case .indiraGandhi: return "VIDP"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
