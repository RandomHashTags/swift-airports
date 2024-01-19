//
//  AirportsIndiaManipur.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaManipur : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case imphal
    
    public var subdivisionLevel1: SubdivisionsIndia {
        return SubdivisionsIndia.manipur
    }
    
    public var iata : String {
        switch self {
        case .imphal: return "IMF"
        }
    }
    
    public var icao : String {
        switch self {
        case .imphal: return "VEIM"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
