//
//  AirportsUnitedStatesIllinois.swift
//  
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesIllinois : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Illinois
    case midAmerica
    case central
    case willard
    case midway
    case ohare
    case veterans
    case quadCity
    case generalDowning
    case rockford
    case abrahamLincoln
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.illinois
    }
    
    public var faa: String {
        switch self {
        case .midAmerica: return "BLV"
        case .central: return "BMI"
        case .willard: return "CMI"
        case .midway: return "MDW"
        case .ohare: return "ORD"
        case .veterans: return "MWA"
        case .quadCity: return "MLI"
        case .generalDowning: return "PIA"
        case .rockford: return "RFD"
        case .abrahamLincoln: return "SPI"
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
        case .midAmerica: return "https://flymidamerica.com"
        case .central: return "https://cira.com"
        case .willard: return "https://iflycu.com"
        case .midway: return "https://www.flychicago.com/midway/home/pages/default.aspx"
        case .ohare: return "https://www.flychicago.com/ohare/home/pages/default.aspx"
        case .veterans: return "https://veteransairport.com"
        case .quadCity: return "https://www.qcairport.com"
        case .generalDowning: return "https://www.flypia.com"
        case .rockford: return "https://flyrfd.com"
        case .abrahamLincoln: return "https://www.flyspi.com"
        }
    }
}
