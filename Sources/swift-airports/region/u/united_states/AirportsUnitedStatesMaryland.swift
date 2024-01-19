//
//  AirportsUnitedStatesMaryland.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesMaryland : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Maryland
    case baltimore
    case hagerstown
    case salisbury
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.maryland
    }
    
    public var faa : String {
        switch self {
        case .baltimore: return "BWI"
        case .hagerstown: return "HGR"
        case .salisbury: return "SBY"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .baltimore: return "https://bwiairport.com"
        case .hagerstown: return "https://www.washco-md.net/hagerstown-regional-airport/"
        case .salisbury: return "https://www.flysbyairport.com"
        }
    }
}
