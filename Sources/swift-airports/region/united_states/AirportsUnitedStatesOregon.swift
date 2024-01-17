//
//  AirportsUnitedStatesOregon.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesOregon : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Oregon
    case mahlon
    case rougeValley
    case southwest
    case portland
    case roberts
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.oregon
    }
    
    public var faa : String {
        switch self {
        case .mahlon: return "EUG"
        case .rougeValley: return "MFR"
        case .southwest: return "OTH"
        case .portland: return "PDX"
        case .roberts: return "RDM"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .mahlon: return "https://www.eugene-or.gov/4430/Airport"
        case .rougeValley: return "https://jacksoncountyor.gov"
        case .southwest: return "https://cooscountyairportdistrict.com"
        case .portland: return "http://flypdx.com"
        case .roberts: return "https://www.flyrdm.com"
        }
    }
}
