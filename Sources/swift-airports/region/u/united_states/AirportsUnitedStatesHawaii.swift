//
//  AirportsUnitedStatesHawaii.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesHawaii : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Hawaii
    case hilo
    case danielInouye
    case kahului
    case ellison
    case molokai
    case lanai
    case lihue
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.hawaii
    }
    
    public var faa : String {
        switch self {
        case .hilo: return "ITO"
        case .danielInouye: return "HNL"
        case .kahului: return "OGG"
        case .ellison: return "KOA"
        case .molokai: return "MKK"
        case .lanai: return "LNY"
        case .lihue: return "LIH"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        switch self {
        case .hilo: return "PHTO"
        case .danielInouye: return "PHNL"
        case .kahului: return "PHOG"
        case .ellison: return "PHKO"
        case .molokai: return "PHMK"
        case .lanai: return "PHNY"
        case .lihue: return "PHLI"
        }
    }
    
    public var websiteURL : String? {
        switch self {
        case .hilo: return "https://airports.hawaii.gov/ito/"
        case .danielInouye: return "https://airports.hawaii.gov/hnl/"
        case .kahului: return "https://airports.hawaii.gov/ogg/"
        case .ellison: return "https://airports.hawaii.gov/koa/"
        case .molokai: return "https://airports.hawaii.gov/mkk/"
        case .lanai: return "https://airports.hawaii.gov/lny/"
        case .lihue: return "https://airports.hawaii.gov/lih/"
        }
    }
}
