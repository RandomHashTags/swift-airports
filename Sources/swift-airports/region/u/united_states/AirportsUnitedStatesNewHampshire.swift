//
//  AirportsUnitedStatesNewHampshire.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesNewHampshire : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_New_Hampshire
    case machester
    case portsmouth
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.new_hampshire
    }
    
    public var faa : String {
        switch self {
        case .machester: return "MHT"
        case .portsmouth: return "PSM"
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
        case .machester: return "https://www.flymanchester.com"
        case .portsmouth: return "https://peasedev.org/travel"
        }
    }
}
