//
//  AirportsUnitedStatesNorthCarolina.swift
//
//
//  Created by Evan Anderson on 11/29/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesNorthCarolina : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_North_Carolina
    case asheville
    case charlotteDouglas
    case concord
    case fayetteville
    case piedmontTriad
    case pitt
    case albertEllis
    case coastalCarolina
    case raleigh
    case wilmington
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.north_carolina
    }
    
    public var faa : String {
        switch self {
        case .asheville: return "AVL"
        case .charlotteDouglas: return "CLT"
        case .concord: return "JQF"
        case .fayetteville: return "FAY"
        case .piedmontTriad: return "GSO"
        case .pitt: return "PGV"
        case .albertEllis: return "OAJ"
        case .coastalCarolina: return "EWN"
        case .raleigh: return "RDU"
        case .wilmington: return "ILM"
        }
    }
    
    public var iata : String {
        switch self {
        case .concord: return "USA"
        default: return faa
        }
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .asheville: return "https://flyavl.com"
        case .charlotteDouglas: return "https://www.cltairport.com"
        case .concord: return "https://www.concordairportnc.com"
        case .fayetteville: return "https://www.flyfay.com"
        case .piedmontTriad: return "https://flyfrompti.com"
        case .pitt: return "https://flypgv.com"
        case .albertEllis: return "https://flyoaj.com"
        case .coastalCarolina: return "https://www.flyewn.com"
        case .raleigh: return "https://www.rdu.com"
        case .wilmington: return "https://flyilm.com"
        }
    }
}
