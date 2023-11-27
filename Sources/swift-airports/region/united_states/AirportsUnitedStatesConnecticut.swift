//
//  AirportsUnitedStatesConnecticut.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesConnecticut : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Connecticut
    case bradley
    case tweedNewHaven
    
    public var subdivisionLevel1: SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.connecticut
    }
    
    public var faa : String {
        switch self {
        case .bradley: return "BDL"
        case .tweedNewHaven: return "HVN"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String? {
        switch self {
        case .bradley: return "https://bradleyairport.com"
        case .tweedNewHaven: return "https://flytweed.com"
        }
    }
}
