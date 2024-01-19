//
//  AirportsUnitedStatesOhio.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesOhio : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Ohio
    case akron
    case cleveland
    case johnGlennColumbus
    case rickenbacker
    case jamesCoxDayton
    case eugeneKranzToledo
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.ohio
    }
    
    public var faa : String {
        switch self {
        case .akron: return "CAK"
        case .cleveland: return "CLE"
        case .johnGlennColumbus: return "CMH"
        case .rickenbacker: return "LCK"
        case .jamesCoxDayton: return "DAY"
        case .eugeneKranzToledo: return "TOL"
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
        case .akron: return "https://www.akroncantonairport.com"
        case .cleveland: return "https://www.clevelandairport.com"
        case .johnGlennColumbus: return "https://flycolumbus.com"
        case .rickenbacker: return "https://rickenbackeradvantage.com"
        case .jamesCoxDayton: return "https://flydayton.com"
        case .eugeneKranzToledo: return "https://www.toledoexpress.com"
        }
    }
}
