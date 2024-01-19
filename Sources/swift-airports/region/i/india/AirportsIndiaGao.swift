//
//  AirportsIndiaGao.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaGao : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case dabolim
    case manohar
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.goa
    }
    
    public var iata : String {
        switch self {
        case .dabolim: return "GOI"
        case .manohar: return "GOX"
        }
    }
    
    public var icao : String {
        switch self {
        case .dabolim: return "VOGO"
        case .manohar: return "VOGA"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
