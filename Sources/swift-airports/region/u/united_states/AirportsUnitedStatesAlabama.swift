//
//  AirportsUnitedStatesAlabama.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesAlabama : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Alabama
    case birminghamShuttlesworth
    case dothan
    case huntsville
    case mobileRegional
    case montgomery
    
    case northwestAlabama
    case saintClair
    case thomasCRussellField
    case georgeDowner
    case anniston
    case auburnUniversity
    case pryorField
    case enterprise
    case weedon
    case northeastAlabama
    case jackEdwards
    case marion
    case mobileInternational
    case monroe
    case craigField
    case talladega
    case troy
    case tuscaloosa
    
    case nolfBarin
    case redstone
    case maxwell
    case cairns
    case hanchey
    case lowe
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.alabama
    }
    
    /*public var citiesServed : [any SovereignStateCity] {
        switch self {
        case .birmingham: return [CitiesUnitedStatesAlabama.birmingham]
        case .dothan: return [CitiesUnitedStatesAlabama.dothan]
        case .huntsville: return [CitiesUnitedStatesAlabama.huntsville]
        case .mobileRegional: return [CitiesUnitedStatesAlabama.mobile]
        case .montgomery: return [CitiesUnitedStatesAlabama.montgomery]
        }
    }*/
    
    public var faa : String {
        switch self {
        case .birminghamShuttlesworth: return "BHM"
        case .dothan: return "DHN"
        case .huntsville: return "HSV"
        case .mobileRegional: return "MOB"
        case .montgomery: return "MGM"
            
        case .northwestAlabama: return "MSL"
        case .saintClair: return "PLR"
        case .thomasCRussellField: return "ALX"
        case .georgeDowner: return "AIV"
        case .anniston: return "ANB"
        case .auburnUniversity: return "AUO"
        case .pryorField: return "DCU"
        case .enterprise: return "EDN"
        case .weedon: return "EUF"
        case .northeastAlabama: return "GAD"
        case .jackEdwards: return "JKA"
        case .marion: return "HAB"
        case .mobileInternational: return "BFM"
        case .monroe: return "MVC"
        case .craigField: return "SEM"
        case .talladega: return "ASN"
        case .troy: return "TOI"
        case .tuscaloosa: return "TCL"
            
        case .nolfBarin: return "NBJ"
        case .redstone: return "HUA"
        case .maxwell: return "MXF"
        case .cairns: return "OZR"
        case .hanchey: return "HEY"
        case .lowe: return "LOR"
        }
    }
    
    public var iata : String {
        switch self {
        case .enterprise: return "ETS"
        case .jackEdwards: return "GUF"
            
        case .nolfBarin: return "NHX"
        default: return faa
        }
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .birminghamShuttlesworth: return "https://www.flybirmingham.com"
        case .dothan: return "https://flydothan.com"
        case .huntsville: return "https://www.flyhuntsville.com"
        case .mobileRegional: return "https://www.mobileairportauthority.com"
        case .montgomery: return "https://flymgm.com"
            
        default: return nil // TODO: add
        }
    }
}

/*
public extension CitiesUnitedStatesAlabama {
    var airports : [AirportsUnitedStatesAlabama] {
        switch self {
        case .birmingham: return [AirportsUnitedStatesAlabama.birmingham]
        case .dothan: return [AirportsUnitedStatesAlabama.dothan]
        case .huntsville: return [AirportsUnitedStatesAlabama.huntsville]
        case .mobileRegional: return [AirportsUnitedStatesAlabama.mobile]
        case .montgomery: return [AirportsUnitedStatesAlabama.montgomery]
        default: return []
        }
    }
}
*/
