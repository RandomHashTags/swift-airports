//
//  AirportsIndiaPuducherry.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaPuducherry : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case puducherry
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.puducherry
    }
    
    public var iata : String {
        switch self {
        case .puducherry: return "PNY"
        }
    }
    
    public var icao : String {
        switch self {
        case .puducherry: return "VOPC"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
