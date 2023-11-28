//
//  AirportsUnitedStatesNewMexico.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesNewMexico : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_New_Mexico
    case albuquerque
    case leaCounty
    case roswell
    case santaFe
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.new_mexico
    }
    
    public var faa : String {
        switch self {
        case .albuquerque: return "ABQ"
        case .leaCounty: return "HOB"
        case .roswell: return "ROW"
        case .santaFe: return "SAF"
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
        case .albuquerque: return "https://www.abqsunport.com"
        case .leaCounty: return nil
        case .roswell: return "https://www.flyroswell.com"
        case .santaFe: return "https://flysantafe.com"
        }
    }
}
