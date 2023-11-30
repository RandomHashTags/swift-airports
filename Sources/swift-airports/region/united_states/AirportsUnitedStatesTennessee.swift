//
//  AirportsUnitedStatesTennessee.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesTennessee : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Tennessee
    case lovell
    case mcGhee
    case memphis
    case nashville
    case triCities
    
    public var subdivisionLevel1: SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.tennessee
    }
    
    public var faa : String {
        switch self {
        case .lovell: return "CHA"
        case .mcGhee: return "TYS"
        case .memphis: return "MEM"
        case .nashville: return "BNA"
        case .triCities: return "TRI"
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
        case .lovell: return "https://www.chattairport.com"
        case .mcGhee: return "https://www.flyknoxville.com"
        case .memphis: return "https://flymemphis.com"
        case .nashville: return "https://flynashville.com"
        case .triCities: return "https://triflight.com"
        }
    }
}
