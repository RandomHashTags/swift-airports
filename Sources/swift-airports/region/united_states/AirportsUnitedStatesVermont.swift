//
//  AirportsUnitedStatesVermont.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesVermont : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Vermont
    case burlington
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.vermont
    }
    
    public var faa : String {
        switch self {
        case .burlington: return "BTV"
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
        case .burlington: return "https://www.btv.aero"
        }
    }
}
