//
//  AirportsIndiaJammuAndKashmir.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaJammuAndKashmir : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case jammu
    case srinagar
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.jammu_and_kashmir
    }
    
    public var iata : String {
        switch self {
        case .jammu: return "IXJ"
        case .srinagar: return "SXR"
        }
    }
    
    public var icao : String {
        switch self {
        case .jammu: return "VIJU"
        case .srinagar: return "VISR"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
