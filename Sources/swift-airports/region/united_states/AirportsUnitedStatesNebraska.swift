//
//  AirportsUnitedStatesNebraska.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesNebraska : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Nebraska
    case central
    case kearney
    case lincoln
    case northPlatte
    case eppley
    case western
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.nebraska
    }
    
    public var faa: String {
        switch self {
        case .central: return "GRI"
        case .kearney: return "EAR"
        case .lincoln: return "LNK"
        case .northPlatte: return "LBF"
        case .eppley: return "OMA"
        case .western: return "BFF"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String? {
        switch self {
        case .central: return "https://flygrandisland.com"
        case .kearney: return "https://flykearney.com"
        case .lincoln: return "https://lincolnairport.com"
        case .northPlatte: return "https://www.northplatteairport.com"
        case .eppley: return "https://www.flyoma.com"
        case .western: return "https://www.flyscottsbluff.com"
        }
    }
}
