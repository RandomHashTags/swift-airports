//
//  AirportsUnitedStatesRhodeIsland.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesRhodeIsland : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Rhode_Island
    case blockIsland
    case green
    case westerly
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.rhode_island
    }
    
    public var faa : String {
        switch self {
        case .blockIsland: return "BID"
        case .green: return "PVD"
        case .westerly: return "WST"
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
        case .blockIsland: return "https://flyblockislandairport.com"
        case .green: return "https://flyri.com"
        case .westerly: return "https://flywesterlyairport.com"
        }
    }
}
