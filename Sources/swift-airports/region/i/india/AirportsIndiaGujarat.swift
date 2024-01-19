//
//  AirportsIndiaGujarat.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaGujarat : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case sardarVallabhbhaiPatel
    case bhavnagar
    case bhuj
    case jamnagar
    case keshod
    case kandla
    case porbandar
    case rajkotInternational
    case rajkot
    case surat
    case vadodara
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.gujarat
    }
    
    public var iata : String {
        switch self {
        case .sardarVallabhbhaiPatel: return "AMD"
        case .bhavnagar: return "BHU"
        case .bhuj: return "BHJ"
        case .jamnagar: return "JGA"
        case .keshod: return "IXK"
        case .kandla: return "IXY"
        case .porbandar: return "PBD"
        case .rajkotInternational: return "HSR"
        case .rajkot: return "RAJ"
        case .surat: return "STV"
        case .vadodara: return "BDQ"
        }
    }
    
    public var icao : String {
        switch self {
        case .sardarVallabhbhaiPatel: return "VAAH"
        case .bhavnagar: return "VABV"
        case .bhuj: return "VABJ"
        case .jamnagar: return "VAJM"
        case .keshod: return "VAKS"
        case .kandla: return "VAKE"
        case .porbandar: return "VAPR"
        case .rajkotInternational: return "VAHS"
        case .rajkot: return "VARK"
        case .surat: return "VASU"
        case .vadodara: return "VABO"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
