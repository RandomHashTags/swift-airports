//
//  AirportsUnitedStatesWashingtonDC.swift
//
//
//  Created by Evan Anderson on 11/29/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesWashingtonDC : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_serving_Washington,_D.C.
    case ronaldReagonWashington
    case washingtonDulles
    
    public var subdivisionLevel1: SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.washington_dc
    }
    
    public var faa : String {
        switch self {
        case .ronaldReagonWashington: return "DCA"
        case .washingtonDulles: return "IAD"
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
        case .ronaldReagonWashington: return "https://www.flyreagan.com"
        case .washingtonDulles: return "https://www.flydulles.com"
        }
    }
}
