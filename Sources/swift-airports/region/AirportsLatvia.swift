//
//  AirportsLatvia.swift
//
//
//  Created by Evan Anderson on 1/17/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsLatvia : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Latvia
    
    public typealias SubdivisionLevel1Type = SubdivisionsLatvia
    
    case daugavpils
    case liepaja
    case riga
    case ventspils
    
    public var country : Country {
        return Country.latvia
    }
    
    public var subdivisionLevel1 : SubdivisionsLatvia {
        switch self {
        case .daugavpils: return SubdivisionsLatvia.augsdaugava
        case .liepaja: return SubdivisionsLatvia.liepaja
        case .riga: return SubdivisionsLatvia.riga
        case .ventspils: return SubdivisionsLatvia.ventspils
        }
    }
    
    public var iata : String {
        switch self {
        case .daugavpils: return "DGP"
        case .liepaja: return "LPX"
        case .riga: return "RIX"
        case .ventspils: return "VNT"
        }
    }
    
    public var icao : String {
        switch self {
        case .daugavpils: return "EVDA"
        case .liepaja: return "EVLA"
        case .riga: return "EVRA"
        case .ventspils: return "EVVA"
        }
    }
    
    public var websiteURL : String? {
        switch self {
        case .daugavpils: return nil
        case .liepaja: return "https://www.liepaja-airport.lv"
        case .riga: return "https://www.riga-airport.com"
        case .ventspils: return nil
        }
    }
}
