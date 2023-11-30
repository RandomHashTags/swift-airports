//
//  AirportsUnitedStatesIndiana.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesIndiana : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Indiana
    case evansville
    case fortWayne
    case indianapolis
    case southBend
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.indiana
    }
    
    public var faa : String {
        switch self {
        case .evansville: return "EVV"
        case .fortWayne: return "FWA"
        case .indianapolis: return "IND"
        case .southBend: return "SBN"
        }
    }
    
    public var iata: String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .evansville: return "https://flyevv.com"
        case .fortWayne: return "https://fwairport.com"
        case .indianapolis: return "https://ind.com"
        case .southBend: return "https://flysbn.com"
        }
    }
}
