//
//  AirportsUnitedStatesPennsylvania.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesPennsylvania : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Pennsylvania
    case lehighValley
    case erie
    case harrisburg
    case arnoldPalmer
    case philadelphia
    case pittsburgh
    case stateCollege
    case wilkes
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.pennsylvania
    }
    
    public var faa : String {
        switch self {
        case .lehighValley: return "ABE"
        case .erie: return "ERI"
        case .harrisburg: return "MDT"
        case .arnoldPalmer: return "LBE"
        case .philadelphia: return "PHL"
        case .pittsburgh: return "PIT"
        case .stateCollege: return "UNV"
        case .wilkes: return "AVP"
        }
    }
    
    public var iata : String {
        switch self {
        case .stateCollege: return "SCE"
        default: return faa
        }
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .lehighValley: return "https://www.flyabe.com"
        case .erie: return "https://www.erieairport.org"
        case .harrisburg: return "https://www.flyhia.com"
        case .arnoldPalmer: return "https://www.palmerairport.com"
        case .philadelphia: return "https://www.phl.org"
        case .pittsburgh: return "https://flypittsburgh.com"
        case .stateCollege: return "https://www.flysce.com"
        case .wilkes: return "https://flyavp.com"
        }
    }
}
