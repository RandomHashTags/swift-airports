//
//  AirportsUnitedStatesWashington.swift
//  
//
//  Created by Evan Anderson on 11/29/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesWashington : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Washington_(state)
    case bellingham
    case orcasIsland
    case paineField
    case fridayHarbor
    case triCities
    case pullman
    case kingCounty
    case seattle
    case spokane
    case wallaWalla
    case pangborn
    case yakima
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.washington
    }
    
    public var faa : String {
        switch self {
        case .bellingham: return "BLI"
        case .orcasIsland: return "ORS"
        case .paineField: return "PAE"
        case .fridayHarbor: return "FHR"
        case .triCities: return "PSC"
        case .pullman: return "PUW"
        case .kingCounty: return "BFI"
        case .seattle: return "SEA"
        case .spokane: return "GEG"
        case .wallaWalla: return "ALW"
        case .pangborn: return "EAT"
        case .yakima: return "YKM"
        }
    }
    
    public var iata : String {
        switch self {
        case .orcasIsland: return "ESD"
        case .fridayHarbor: return "FRD"
        default: return faa
        }
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .bellingham: return "https://www.portofbellingham.com/888/Airport"
        case .orcasIsland: return "https://www.portoforcas.com"
        case .paineField: return "https://www.painefield.com"
        case .fridayHarbor: return "https://www.portfridayharbor.org/airport/"
        case .triCities: return "https://www.flytricities.com"
        case .pullman: return "http://www.flypuw.com"
        case .kingCounty: return "https://kingcounty.gov/en/legacy/services/airport.aspx"
        case .seattle: return "https://www.portseattle.org/sea-tac"
        case .spokane: return "https://spokaneairports.net"
        case .wallaWalla: return "https://www.wallawallaairport.com"
        case .pangborn: return "https://www.flywenatchee.com"
        case .yakima: return "https://flyykm.com"
        }
    }
}
