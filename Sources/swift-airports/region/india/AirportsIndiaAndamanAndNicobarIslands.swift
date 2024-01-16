//
//  AirportsIndiaAndamanAndNicobarIslands.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaAndamanAndNicobarIslands : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case veerSavarkar
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.andaman_and_nicobar_islands
    }
    
    public var iata : String {
        switch self {
        case .veerSavarkar: return "IXZ"
        }
    }
    
    public var icao : String {
        switch self {
        case .veerSavarkar: return "VOPB"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
