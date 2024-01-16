//
//  AirportsIndiaLakshadweek.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaLakshadweek : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case agatti
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.lakshadweep
    }
    
    public var iata : String {
        switch self {
        case .agatti: return "AGX"
        }
    }
    
    public var icao : String {
        switch self {
        case .agatti: return "VOAT"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
