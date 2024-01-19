//
//  AirportsUnitedStatesWisconsin.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesWisconsin : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Wisconsin
    case appleton
    case chippewa
    case greenBay
    case laCrosse
    case dane
    case milwaukeeMitchell
    case central
    case rhinelander
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.wisconsin
    }
    
    public var faa : String {
        switch self {
        case .appleton: return "ATW"
        case .chippewa: return "EAU"
        case .greenBay: return "GRB"
        case .laCrosse: return "LSE"
        case .dane: return "MSN"
        case .milwaukeeMitchell: return "MKE"
        case .central: return "CWA"
        case .rhinelander: return "RHI"
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
        case .appleton: return "https://atwairport.com"
        case .chippewa: return "https://www.visiteauclaire.com/plan/transportation/chippewa-valley-regional-airport/"
        case .greenBay: return "https://www.flygrb.com"
        case .laCrosse: return "https://lseairport.com"
        case .dane: return "https://msnairport.com"
        case .milwaukeeMitchell: return "https://www.mitchellairport.com"
        case .central: return "https://www.fly-cwa.org"
        case .rhinelander: return "https://www.flyrhinelander.com"
        }
    }
}
