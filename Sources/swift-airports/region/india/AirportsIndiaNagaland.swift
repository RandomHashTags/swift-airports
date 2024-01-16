//
//  AirportsIndiaNagaland.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaNagaland : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case dimapur
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.nagaland
    }
    
    public var iata : String {
        switch self {
        case .dimapur: return "DMU"
        }
    }
    
    public var icao : String {
        switch self {
        case .dimapur: return "VEMR"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
