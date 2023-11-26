//
//  AirportsUnitedStatesConnecticut.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesConnecticut : String, AirportUnitedStates {
    case bradley
    case tweedNewHaven
    
    public var subdivision_level_1: SubdivisionsUnitedStates {
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
