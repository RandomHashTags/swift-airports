//
//  AirportsIndiaTelangana.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaTelangana : String, AirportIndia {
    case begumpet
    case rajivGandhi
    case warangal
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.telangana
    }
    
    public var iata : String {
        switch self {
        case .begumpet: return "BPM"
        case .rajivGandhi: return "HYD"
        case .warangal: return "WGC"
        }
    }
    
    public var icao : String {
        switch self {
        case .begumpet: return "VOHY"
        case .rajivGandhi: return "VOHS"
        case .warangal: return "VOWA"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
