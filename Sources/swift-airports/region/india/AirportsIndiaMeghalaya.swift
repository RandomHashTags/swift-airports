//
//  AirportsIndiaMeghalaya.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaMeghalaya : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case shillong
    
    public var subdivisionLevel1: SubdivisionsIndia {
        return SubdivisionsIndia.meghalaya
    }
    
    public var iata : String {
        switch self {
        case .shillong: return "SHL"
        }
    }
    
    public var icao : String {
        switch self {
        case .shillong: return "VEBI"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
