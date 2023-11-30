//
//  AirportsUnitedStatesSouthDakota.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesSouthDakota : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_South_Dakota
    case aberdeen
    case pierre
    case rapidCity
    case joeFoss
    case watertown
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.south_dakota
    }
    
    public var faa : String {
        switch self {
        case .aberdeen: return "ABR"
        case .pierre: return "PIR"
        case .rapidCity: return "RAP"
        case .joeFoss: return "FSD"
        case .watertown: return "ATY"
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
        case .aberdeen: return "https://www.aberdeen.sd.us/76/Airport"
        case .pierre: return "https://www.cityofpierre.org/648/Airport"
        case .rapidCity: return "https://rapairport.com"
        case .joeFoss: return "https://www.sfairport.com"
        case .watertown: return "https://www.watertownsd.us/853/Watertown-Regional-Airport"
        }
    }
}
