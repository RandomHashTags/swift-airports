//
//  AirportsIndiaKerala.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaKerala : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case kannur
    case cochin
    case kozhikode
    case thiruvananthapuram
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.kerala
    }
    
    public var iata: String {
        switch self {
        case .kannur: return "CNN"
        case .cochin: return "COK"
        case .kozhikode: return "CCJ"
        case .thiruvananthapuram: return "TRV"
        }
    }
    
    public var icao : String {
        switch self {
        case .kannur: return "VOKN"
        case .cochin: return "VOCI"
        case .kozhikode: return "VOCL"
        case .thiruvananthapuram: return "VOTV"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
