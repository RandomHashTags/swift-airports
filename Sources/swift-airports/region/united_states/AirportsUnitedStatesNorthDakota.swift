//
//  AirportsUnitedStatesNorthDakota.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesNorthDakota : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_North_Dakota
    case bismarck
    case dickinson
    case hector
    case grandForks
    case jamestown
    case minot
    case willistonBasin
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.north_dakota
    }
    
    public var faa: String {
        switch self {
        case .bismarck: return "BIS"
        case .dickinson: return "DIK"
        case .hector: return "FAR"
        case .grandForks: return "GFK"
        case .jamestown: return "JMS"
        case .minot: return "MOT"
        case .willistonBasin: return "XWA"
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
        case .bismarck: return "https://www.bismarckairport.com"
        case .dickinson: return "https://dickinsonairport.com"
        case .hector: return "https://www.fargoairport.com"
        case .grandForks: return "https://gfkairport.com"
        case .jamestown: return "https://flyjamestown.net"
        case .minot: return "https://www.motairport.com"
        case .willistonBasin: return "https://www.flywilliston.net"
        }
    }
}
