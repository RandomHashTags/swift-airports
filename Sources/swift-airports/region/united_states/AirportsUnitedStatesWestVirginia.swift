//
//  AirportsUnitedStatesWestVirginia.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesWestVirginia : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_West_Virginia
    case yeager
    case northCentral
    case triState
    case greenbrierValley
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.west_virginia
    }
    
    public var faa : String {
        switch self {
        case .yeager: return "CRW"
        case .northCentral: return "CKB"
        case .triState: return "HTS"
        case .greenbrierValley: return "LWB"
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
        case .yeager: return "https://yeagerairport.com"
        case .northCentral: return "https://flyckb.com"
        case .triState: return "https://www.tristateairport.com"
        case .greenbrierValley: return "https://www.mylwb.com"
        }
    }
}
