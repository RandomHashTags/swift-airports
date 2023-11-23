//
//  AirportsUnitedStatesAlabama.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesAlabama : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Alabama
    case birmingham_shuttlesworth
    case dothan
    case huntsville
    case mobile
    case montgomery
    
    public var subdivision_level_1 : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.alabama
    }
    
    /*public var citiesServed : [any SovereignStateCity] {
        switch self {
        case .birmingham: return [CitiesUnitedStatesAlabama.birmingham]
        case .dothan: return [CitiesUnitedStatesAlabama.dothan]
        case .huntsville: return [CitiesUnitedStatesAlabama.huntsville]
        case .mobile: return [CitiesUnitedStatesAlabama.mobile]
        case .montgomery: return [CitiesUnitedStatesAlabama.montgomery]
        }
    }*/
    
    public var faa : String {
        switch self {
        case .birmingham_shuttlesworth: return "BHM"
        case .dothan: return "DHN"
        case .huntsville: return "HSV"
        case .mobile: return "MOB"
        case .montgomery: return "MGM"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String {
        switch self {
        case .birmingham_shuttlesworth: return "https://www.flybirmingham.com"
        case .dothan: return "https://flydothan.com"
        case .huntsville: return "https://www.flyhuntsville.com"
        case .mobile: return "https://www.mobileairportauthority.com"
        case .montgomery: return "https://flymgm.com"
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
        case .mobile: return [AirportsUnitedStatesAlabama.mobile]
        case .montgomery: return [AirportsUnitedStatesAlabama.montgomery]
        default: return []
        }
    }
}
*/
