//
//  AirportsUnitedStatesMassachusetts.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesMassachusetts : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Massachusetts
    case logan
    case capeCod
    case nantucket
    case martha
    case worcester
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.massachusetts
    }
    
    public var faa : String {
        switch self {
        case .logan: return "BOS"
        case .capeCod: return "HYA"
        case .nantucket: return "ACK"
        case .martha: return "MVY"
        case .worcester: return "ORH"
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
        case .logan: return "https://www.massport.com/logan-airport/"
        case .capeCod: return "https://flyhya.com"
        case .nantucket: return "https://www.nantucket-ma.gov/2445/Memorial-Airport"
        case .martha: return "https://mvyairport.com"
        case .worcester: return "https://www.massport.com/worcester-airport/"
        }
    }
}
