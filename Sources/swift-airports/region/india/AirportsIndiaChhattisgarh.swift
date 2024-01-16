//
//  AirportsIndiaChhattisgarh.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaChhattisgarh : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case swamiVivekananda
    case bilaspur
    case jagdalpur
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.chhattisgarh
    }
    
    public var iata : String {
        switch self {
        case .swamiVivekananda: return "RPR"
        case .bilaspur: return "PAB"
        case .jagdalpur: return "JGB"
        }
    }
    
    public var icao : String {
        switch self {
        case .swamiVivekananda: return "VARP"
        case .bilaspur: return "VEBU"
        case .jagdalpur: return "VEJR"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
