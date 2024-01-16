//
//  AirportsIndiaChandigarh.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaChandigarh : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case shaheedBhagatSingh
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.chandigarh
    }
    
    public var iata : String {
        switch self {
        case .shaheedBhagatSingh: return "IXC"
        }
    }
    
    public var icao : String {
        switch self {
        case .shaheedBhagatSingh: return "VICG"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
