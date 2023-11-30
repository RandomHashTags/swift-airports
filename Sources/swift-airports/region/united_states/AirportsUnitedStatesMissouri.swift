//
//  AirportsUnitedStatesMissouri.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesMissouri : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Missouri
    case branson
    case columbia
    case waynesville
    case joplin
    case kansasCity
    case stLouis
    case springfield
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.missouri
    }
    
    public var faa : String {
        switch self {
        case .branson: return "BBG"
        case .columbia: return "COU"
        case .waynesville: return "TBN"
        case .joplin: return "JLN"
        case .kansasCity: return "MCI"
        case .stLouis: return "STL"
        case .springfield: return "SGF"
        }
    }
    
    public var iata : String {
        switch self {
        case .branson: return "BKG"
        default: return faa
        }
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String? {
        switch self {
        case .branson: return "https://flybranson.com"
        case .columbia: return "https://www.flycou.com"
        case .waynesville: return "https://www.flyflw.com"
        case .joplin: return "https://www.flyjoplin.com"
        case .kansasCity: return "https://flykc.com"
        case .stLouis: return "https://www.flystl.com"
        case .springfield: return "https://www.flyspringfield.com"
        }
    }
}
