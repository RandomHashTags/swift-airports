//
//  AirportsIndiaMizoram.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaMizoram : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case lengpui
    
    public var subdivisionLevel1: SubdivisionsIndia {
        return SubdivisionsIndia.mizoram
    }
    
    public var iata : String {
        switch self {
        case .lengpui: return "AJL"
        }
    }
    
    public var icao : String {
        switch self {
        case .lengpui: return "VELP"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
