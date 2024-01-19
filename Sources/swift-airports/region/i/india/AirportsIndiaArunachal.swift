//
//  AirportsIndiaArunachal.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaArunachal : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case daporijo
    case donyiPolo
    case pasighat
    case tezu
    case ziro
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.arunachal_pradesh
    }
    
    public var iata : String {
        switch self {
        case .daporijo: return "DEP"
        case .donyiPolo: return "HGI"
        case .pasighat: return "IXT"
        case .tezu: return "TEI"
        case .ziro: return "ZER"
        }
    }
    
    public var icao : String {
        switch self {
        case .daporijo: return "VEDZ"
        case .donyiPolo: return "VEHO"
        case .pasighat: return "VEPG"
        case .tezu: return "VETJ"
        case .ziro: return "VEZO"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
