//
//  AirportsSwitzerland.swift
//
//
//  Created by Evan Anderson on 11/30/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsSwitzerland : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Switzerland
    public typealias SubdivisionLevel1Type = SubdivisionsSwitzerland
    
    case bern
    case buochs
    case geneva
    case lugano
    case sion
    case stGallen
    //case samedan
    case zurich
    
    public var country : Country {
        return Country.switzerland
    }
    
    public var subdivisionLevel1 : SubdivisionsSwitzerland {
        switch self {
        case .bern: return SubdivisionsSwitzerland.bern
        case .buochs: return SubdivisionsSwitzerland.nidwalden
        case .geneva: return SubdivisionsSwitzerland.geneva
        case .lugano: return SubdivisionsSwitzerland.ticino
        case .sion: return SubdivisionsSwitzerland.valais
        case .stGallen: return SubdivisionsSwitzerland.st_gallen
        case .zurich: return SubdivisionsSwitzerland.zurich
        }
    }
    
    public var iata : String {
        switch self {
        case .bern: return "BRN"
        case .buochs: return "BXO"
        case .geneva: return "GVA"
        case .lugano: return "LUG"
        case .sion: return "SIR"
        case .stGallen: return "ACH"
        case .zurich: return "ZRH"
        }
    }
    
    public var icao : String {
        switch self {
        case .bern: return "LSZB"
        case .buochs: return "LSZC"
        case .geneva: return "LSGG"
        case .lugano: return "LSZA"
        case .sion: return "LSGS"
        case .stGallen: return "LSZR"
        case .zurich: return "LSZH"
        }
    }
    
    public var websiteURL : String? {
        switch self {
        case .bern: return "https://www.bernairport.ch"
        case .buochs: return "https://airportbuochs.ch"
        case .geneva: return "https://www.gva.ch"
        case .lugano: return "https://www.luganoairport.ch"
        case .sion: return "https://www.sionaeroport.ch"
        case .stGallen: return "https://www.peoples.ch"
        case .zurich: return "https://www.flughafen-zuerich.ch"
        }
    }
}
