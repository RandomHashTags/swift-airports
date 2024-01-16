//
//  AirportsIndiaBihar.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaBihar : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India | https://en.wikipedia.org/wiki/List_of_airports_in_Bihar
    case darbhanga
    case gaya
    case jayPrakash
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.bihar
    }
    
    public var iata : String {
        switch self {
        case .darbhanga: return "DBR"
        case .gaya: return "GAY"
        case .jayPrakash: return "PAT"
        }
    }
    
    public var icao : String {
        switch self {
        case .darbhanga: return "VEDH"
        case .gaya: return "VEGY"
        case .jayPrakash: return "VEPT"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
