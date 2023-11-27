//
//  AirportsUnitedStatesIowa.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesIowa : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Iowa
    case eastern
    case desMoines
    case dubuque
    case siouxGateway
    case waterloo
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.iowa
    }
    
    public var faa : String {
        switch self {
        case .eastern: return "CID"
        case .desMoines: return "DSM"
        case .dubuque: return "DBQ"
        case .siouxGateway: return "SUX"
        case .waterloo: return "ALO"
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
        case .eastern: return "https://flycid.com"
        case .desMoines: return "https://www.flydsm.com"
        case .dubuque: return "https://www.flydbq.com"
        case .siouxGateway: return "https://flysux.com"
        case .waterloo: return "https://www.flyalo.com"
        }
    }
}
