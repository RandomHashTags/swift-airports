//
//  AirportsUnitedStatesMichigan.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesMichigan : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Michigan
    case alpena
    case detroit
    case delta
    case bishop
    case geraldFord
    case houghton
    case ford
    case kalamazoo
    case capital
    case sawyer
    case muskegon
    case pellston
    case mbs
    case chippewa
    case cherry
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.michigan
    }
    
    public var faa : String {
        switch self {
        case .alpena: return "APN"
        case .detroit: return "DTW"
        case .delta: return "ESC"
        case .bishop: return "FNT"
        case .geraldFord: return "GRR"
        case .houghton: return "CMX"
        case .ford: return "IMT"
        case .kalamazoo: return "AZO"
        case .capital: return "LAN"
        case .sawyer: return "SAW"
        case .muskegon: return "MKG"
        case .pellston: return "PLN"
        case .mbs: return "MBS"
        case .chippewa: return "CIU"
        case .cherry: return "TVC"
        }
    }
    
    public var iata : String {
        switch self {
        case .sawyer: return "MQT"
        default: return faa
        }
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .alpena: return "https://alpenaairport.com"
        case .detroit: return "https://www.metroairport.com"
        case .delta: return "https://flyesc.com"
        case .bishop: return "https://www.bishopairport.org"
        case .geraldFord: return "https://www.grr.org"
        case .houghton: return "https://www.houghtoncounty.org"
        case .ford: return "https://www.fordairport.org"
        case .kalamazoo: return "https://flyazo.com"
        case .capital: return "https://www.flylansing.com"
        case .sawyer: return "https://sawyerairport.com"
        case .muskegon: return "https://flymuskegon.com"
        case .pellston: return "https://www.pellstonairport.org"
        case .mbs: return "https://www.mbsairport.org"
        case .chippewa: return "https://airciu.com"
        case .cherry: return "https://tvcairport.com"
        }
    }
}
