//
//  AirportsUnitedStatesNevada.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesNevada : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Nevada
    case boulderCity
    case elko
    case harryReid
    case reno
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.nevada
    }
    
    public var faa : String {
        switch self {
        case .boulderCity: return "BVU"
        case .elko: return "EKO"
        case .harryReid: return "LAS"
        case .reno: return "RNO"
        }
    }
    
    public var iata : String {
        switch self {
        case .boulderCity: return "BLD"
        default: return faa
        }
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String? {
        switch self {
        case .boulderCity: return "https://flybouldercity.com"
        case .elko: return "https://www.flyelkonevada.com"
        case .harryReid: return "https://harryreidairport.com"
        case .reno: return "https://www.renoairport.com"
        }
    }
}
