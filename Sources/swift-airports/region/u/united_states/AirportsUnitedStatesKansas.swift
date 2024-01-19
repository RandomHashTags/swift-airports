//
//  AirportsUnitedStatesKansas.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesKansas : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Kansas
    case gardenCity
    case hays
    case manhattan
    case salina
    case wichita
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.kansas
    }
    
    public var faa : String {
        switch self {
        case .gardenCity: return "GCK"
        case .hays: return "HYS"
        case .manhattan: return "MHK"
        case .salina: return "SLN"
        case .wichita: return "ICT"
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
        case .gardenCity: return "https://www.fly2gck.com"
        case .hays: return "https://flyhays.com"
        case .manhattan: return "https://flymhk.com/default.aspx"
        case .salina: return "https://www.salinaairport.com"
        case .wichita: return "https://www.flywichita.com"
        }
    }
}
