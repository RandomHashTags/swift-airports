//
//  AirportsIndiaRajasthan.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaRajasthan : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case kishangarh
    case bikaner
    case jaipur
    case jaisalmer
    case jodhpur
    case kota
    case maharanaPratap
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.rajasthan
    }
    
    public var iata : String {
        switch self {
        case .kishangarh: return "KQH"
        case .bikaner: return "BKB"
        case .jaipur: return "JAI"
        case .jaisalmer: return "JSA"
        case .jodhpur: return "JDH"
        case .kota: return "KTU"
        case .maharanaPratap: return "UDR"
        }
    }
    
    public var icao : String {
        switch self {
        case .kishangarh: return "VIKG"
        case .bikaner: return "VIBK"
        case .jaipur: return "VIJP"
        case .jaisalmer: return "VIJR"
        case .jodhpur: return "VIJO"
        case .kota: return "VIKO"
        case .maharanaPratap: return "VAUD"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
