//
//  AirportsUnitedStatesMississippi.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesMississippi : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Mississippi
    case goldenTriangle
    case gulfport
    case hattiesburg
    case jackson
    case key
    case tupelo
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.mississippi
    }
    
    public var faa : String {
        switch self {
        case .goldenTriangle: return "GTR"
        case .gulfport: return "GPT"
        case .hattiesburg: return "PIB"
        case .jackson: return "JAN"
        case .key: return "MEI"
        case .tupelo: return "TUP"
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
        case .goldenTriangle: return "https://www.gtra.com"
        case .gulfport: return "https://www.flygpt.com"
        case .hattiesburg: return "https://www.flypib.com"
        case .jackson: return "https://jmaa.com"
        case .key: return "https://www.meridianairport.com"
        case .tupelo: return "https://flytupelo.com"
        }
    }
}
