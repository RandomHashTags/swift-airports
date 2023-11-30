//
//  AirportsUnitedStatesArizona.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesArizona : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Arizona
    case flagstaff
    case mesa
    case page
    case phoenix
    case prescott
    case tucson
    case yuma
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.arizona
    }
    
    public var faa : String {
        switch self {
        case .flagstaff: return "FLG"
        case .mesa: return "IWA"
        case .page: return "PGA"
        case .phoenix: return "PHX"
        case .prescott: return "PRC"
        case .tucson: return "TUS"
        case .yuma: return "NYL"
        }
    }
    
    public var iata : String {
        switch self {
        case .mesa: return "AZA"
        case .yuma: return "YUM"
        default: return faa
        }
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .flagstaff: return "https://flyflagstaffaz.com"
        case .mesa: return "https://gatewayairport.com"
        case .page: return "https://cityofpage.org/departments/airport/"
        case .phoenix: return "https://www.skyharbor.com"
        case .prescott: return "https://flyprescott.com"
        case .tucson: return "https://www.flytucson.com"
        case .yuma: return "https://www.flyyuma.com"
        }
    }
}
