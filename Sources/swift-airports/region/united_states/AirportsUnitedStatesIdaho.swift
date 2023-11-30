//
//  AirportsUnitedStatesIdaho.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesIdaho : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Idaho
    case boise
    case friedman
    case idahoFalls
    case lewistonNezPerce
    case pocatello
    case magicValley
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.idaho
    }
    
    public var faa : String {
        switch self {
        case .boise: return "BOI"
        case .friedman: return "SUN"
        case .idahoFalls: return "IDA"
        case .lewistonNezPerce: return "LWS"
        case .pocatello: return "PIH"
        case .magicValley: return "TWF"
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
        case .boise: return "https://www.iflyboise.com"
        case .friedman: return "https://iflysun.com"
        case .idahoFalls: return "https://www.idahofallsidaho.gov/1743/Airport"
        case .lewistonNezPerce: return "https://www.golws.com"
        case .pocatello: return "https://www.iflypocatello.com"
        case .magicValley: return "http://www.tfid.org/?NID=136"
        }
    }
}
