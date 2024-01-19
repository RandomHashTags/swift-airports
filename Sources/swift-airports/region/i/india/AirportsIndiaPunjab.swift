//
//  AirportsIndiaPunjab.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaPunjab : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case sriGuruRamDassJee
    case bathinda
    case adampur
    case ludhiana
    case pathankot
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.punjab
    }
    
    public var iata : String {
        switch self {
        case .sriGuruRamDassJee: return "ATQ"
        case .bathinda: return "BUP"
        case .adampur: return "AIP"
        case .ludhiana: return "LUH"
        case .pathankot: return "IXP"
        }
    }
    
    public var icao : String {
        switch self {
        case .sriGuruRamDassJee: return "VIAR"
        case .bathinda: return "VIBT"
        case .adampur: return "VIAX"
        case .ludhiana: return "VILD"
        case .pathankot: return "VIPK"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
