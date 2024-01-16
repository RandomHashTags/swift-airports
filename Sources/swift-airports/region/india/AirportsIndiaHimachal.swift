//
//  AirportsIndiaHimachal.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaHimachal : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case kangra
    case kulluManali
    case shimla
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.himachal_pradesh
    }
    
    public var iata : String {
        switch self {
        case .kangra: return "DHM"
        case .kulluManali: return "KUU"
        case .shimla: return "SLV"
        }
    }
    
    public var icao : String {
        switch self {
        case .kangra: return "VIGG"
        case .kulluManali: return "VIBR"
        case .shimla: return "VISM"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
