//
//  AirportsIndiaTripura.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaTripura : String, AirportIndia {
    case maharajaBirBikram
    case kailashahar
    case kamalpur
    case khowai
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.tripura
    }
    
    public var iata : String {
        switch self {
        case .maharajaBirBikram: return "IXA"
        case .kailashahar: return "IXH"
        case .kamalpur: return "IXQ"
        case .khowai: return "IXN"
        }
    }
    
    public var icao : String {
        switch self {
        case .maharajaBirBikram: return "VEAT"
        case .kailashahar: return "VEKR"
        case .kamalpur: return "VEKN"
        case .khowai: return "VEKW"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
