//
//  AirportsIndiaSikkim.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaSikkim : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case pakyong
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.sikkim
    }
    
    public var iata : String {
        switch self {
        case .pakyong: return "PYG"
        }
    }
    
    public var icao : String {
        switch self {
        case .pakyong: return "VEPY"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
