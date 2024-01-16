//
//  AirportsIndiaKarnataka.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaKarnataka : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case belgavi
    case jindalVijaynagar
    case kempegowda
    case bidar
    case hubli
    case kalaburagi
    case mangalore
    case mysore
    case kuvempu
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.karnataka
    }
    
    public var iata : String {
        switch self {
        case .belgavi: return "IXG"
        case .jindalVijaynagar: return "VDY"
        case .kempegowda: return "BLR"
        case .bidar: return "IXX"
        case .hubli: return "HBX"
        case .kalaburagi: return "GBI"
        case .mangalore: return "IXE"
        case .mysore: return "MYQ"
        case .kuvempu: return "RQY"
        }
    }
    
    public var icao : String {
        switch self {
        case .belgavi: return "VOBM"
        case .jindalVijaynagar: return "VOJV"
        case .kempegowda: return "VOBL"
        case .bidar: return "VOBR"
        case .hubli: return "VOHB"
        case .kalaburagi: return "VOGB"
        case .mangalore: return "VOML"
        case .mysore: return "VOMY"
        case .kuvempu: return "VOSH"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
