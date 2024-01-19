//
//  AirportsIndiaUttar.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaUttar : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case agra
    case maharishiValmiki
    case bareilly
    case hindon
    case gorakhpur
    case kanpur
    case kushinagar
    case chaudharyCharanSingh
    case prayagraj
    case lalBahadurShastri
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.uttar_pradesh
    }
    
    public var iata : String {
        switch self {
        case .agra: return "AGR"
        case .maharishiValmiki: return "AYJ"
        case .bareilly: return "BEK"
        case .hindon: return "QAH"
        case .gorakhpur: return "GOP"
        case .kanpur: return "KNU"
        case .kushinagar: return "KBK"
        case .chaudharyCharanSingh: return "LKO"
        case .prayagraj: return "IXD"
        case .lalBahadurShastri: return "VNS"
        }
    }
    
    public var icao : String {
        switch self {
        case .agra: return "VIAG"
        case .maharishiValmiki: return "VEAY"
        case .bareilly: return "VIBY"
        case .hindon: return "VIDX"
        case .gorakhpur: return "VEGK"
        case .kanpur: return "VIKA"
        case .kushinagar: return "VEKI"
        case .chaudharyCharanSingh: return "VILK"
        case .prayagraj: return "VEAB"
        case .lalBahadurShastri: return "VEBN"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
