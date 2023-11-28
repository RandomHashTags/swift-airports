//
//  AirportsUnitedStatesLouisiana.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesLouisiana : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Louisiana
    case alexandria
    case batonRouge
    case lafayette
    case lakeCharles
    case monroe
    case louisArmstrong
    case shreveport
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.louisiana
    }
    
    public var faa : String {
        switch self {
        case .alexandria: return "AEX"
        case .batonRouge: return "BTR"
        case .lafayette: return "LFT"
        case .lakeCharles: return "LCH"
        case .monroe: return "MLU"
        case .louisArmstrong: return "MSY"
        case .shreveport: return "SHV"
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
        case .alexandria: return "https://englandairpark.org"
        case .batonRouge: return "https://www.flybtr.com"
        case .lafayette: return "https://lftairport.com"
        case .lakeCharles: return "https://flylakecharles.com"
        case .monroe: return "https://flymonroe.org"
        case .louisArmstrong: return "https://flymsy.com"
        case .shreveport: return "https://www.flyshreveport.com"
        }
    }
}
