//
//  AirportsUnitedStatesColorado.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesColorado : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Colorado
    case sanLuis
    case aspen
    case coloradoSprings
    case denver
    case durango
    case eagle
    case grandJunction
    case gunnison
    case yampa
    case montrose
    
    public var subdivision_level_1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.colorado
    }
    
    public var faa : String {
        switch self {
        case .sanLuis: return "ALS"
        case .aspen: return "ASE"
        case .coloradoSprings: return "COS"
        case .denver: return "DEN"
        case .durango: return "DRO"
        case .eagle: return "EGE"
        case .grandJunction: return "GJT"
        case .gunnison: return "GUC"
        case .yampa: return "HDN"
        case .montrose: return "MTJ"
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
        case .sanLuis: return "https://www.sanluisvalleyairport.org"
        case .aspen: return "https://www.aspenairport.com"
        case .coloradoSprings: return "https://coloradosprings.gov/flycos"
        case .denver: return "https://www.flydenver.com"
        case .durango: return "https://www.flydurango.com/1450/Airport"
        case .eagle: return "https://www.flyvail.com"
        case .grandJunction: return "https://www.gjairport.com"
        case .gunnison: return nil
        case .yampa: return "https://flysteamboat.com"
        case .montrose: return "https://montroseairport.com"
        }
    }
}
