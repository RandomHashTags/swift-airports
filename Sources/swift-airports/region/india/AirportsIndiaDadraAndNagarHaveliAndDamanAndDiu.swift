//
//  AirportsIndiaDadraAndNagarHaveliAndDamanAndDiu.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaDadraAndNagarHaveliAndDamanAndDiu : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case diu
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.dadra_and_nagar_haveli_and_daman_and_diu
    }
    
    public var iata : String {
        switch self {
        case .diu: return "DIU"
        }
    }
    
    public var icao : String {
        switch self {
        case .diu: return "VADU"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
