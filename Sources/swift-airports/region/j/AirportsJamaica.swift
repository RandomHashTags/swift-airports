//
//  AirportsJamaica.swift
//
//
//  Created by Evan Anderson on 1/18/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsJamaica : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Jamaica
    public typealias SubdivisionLevel1Type = SubdivisionsJamaica
    
    case normanManley
    case sangster
    case ianFleming
    case tinsonPen
    case negril
    case kenJones
    
    public var country : Country {
        return Country.jamaica
    }
    
    public var subdivisionLevel1 : SubdivisionsJamaica {
        switch self {
        case .normanManley,
                .tinsonPen:
            return SubdivisionsJamaica.kingston
        case .sangster: return SubdivisionsJamaica.saint_james
        case .ianFleming: return SubdivisionsJamaica.saint_mary
        case .negril: return SubdivisionsJamaica.westmoreland
        case .kenJones: return SubdivisionsJamaica.portland
        }
    }
    
    public var iata : String {
        switch self {
        case .normanManley: return "KIN"
        case .sangster: return "MBJ"
        case .ianFleming: return "OCJ"
        case .tinsonPen: return "KTP"
        case .negril: return "NEG"
        case .kenJones: return "POT"
        }
    }
    
    public var icao : String {
        switch self {
        case .normanManley: return "MKJP"
        case .sangster: return "MKJS"
        case .ianFleming: return "MKBS"
        case .tinsonPen: return "MKTP"
        case .negril: return "MKNG"
        case .kenJones: return "MKKJ"
        }
    }
    
    public var websiteURL : String? {
        switch self {
        case .normanManley: return "https://nmia.aero"
        case .sangster: return "https://www.mbjairport.com"
        case .ianFleming: return "https://ifia.aero"
        case .tinsonPen: return "https://airportsauthorityjamaica.aero/location/tinson-pen-aerodrome/"
        case .negril: return "https://airportsauthorityjamaica.aero/location/negril-aerodrome/"
        case .kenJones: return "https://airportsauthorityjamaica.aero/location/ken-jones-aerodrome/"
        }
    }
}
