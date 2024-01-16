//
//  AirportsIndiaJharkhand.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaJharkhand : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case deoghar
    case sonari
    case birsaMunda
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.jharkhand
    }
    
    public var iata : String {
        switch self {
        case .deoghar: return "DGH"
        case .sonari: return "IXW"
        case .birsaMunda: return "IXR"
        }
    }
    
    public var icao : String {
        switch self {
        case .deoghar: return "VEDO"
        case .sonari: return "VEJS"
        case .birsaMunda: return "VERC"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
