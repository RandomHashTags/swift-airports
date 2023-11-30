//
//  AirportsUnitedStatesWyoming.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesWyoming : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Wyoming
    case casper
    case yellowstone
    case gillette
    case jacksonHole
    case laramie
    case central
    case southwest
    case sheridan
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.wyoming
    }
    
    public var faa : String {
        switch self {
        case .casper: return "CPR"
        case .yellowstone: return "COD"
        case .gillette: return "GCC"
        case .jacksonHole: return "JAC"
        case .laramie: return "LAR"
        case .central: return "RIW"
        case .southwest: return "RKS"
        case .sheridan: return "SHR"
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
        case .casper: return "https://iflycasper.com"
        case .yellowstone: return "https://flyyra.com"
        case .gillette: return "https://www.iflygillette.com"
        case .jacksonHole: return "https://www.jacksonholeairport.com"
        case .laramie: return "https://www.flylaramie.com"
        case .central: return "https://centralwyomingairport.com"
        case .southwest: return "https://flyrks.com"
        case .sheridan: return "https://www.sheridancountyairport.com"
        }
    }
}
