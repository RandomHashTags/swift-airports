//
//  AirportsUnitedStatesArkansas.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesArkansas : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Arkansas
    case northwest
    case fort_smith
    case clinton
    case texarkana
    
    public var subdivision_level_1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.arkansas
    }
    
    public var faa : String {
        switch self {
        case .northwest: return "XNA"
        case .fort_smith: return "FSM"
        case .clinton: return "LIT"
        case .texarkana: return "TXK"
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
        case .northwest: return "https://www.flyxna.com"
        case .fort_smith: return "https://flyfsm.com"
        case .clinton: return "https://clintonairport.com"
        case .texarkana: return "https://www.flytxk.com"
        }
    }
}
