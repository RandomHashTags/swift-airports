//
//  AirportsIndiaHaryana.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaHaryana : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case hisar
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.haryana
    }
    
    public var iata : String {
        switch self {
        case .hisar: return "HSS"
        }
    }
    
    public var icao : String {
        switch self {
        case .hisar: return "VIHR"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
