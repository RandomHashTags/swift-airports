//
//  AirportsUnitedStatesKentucky.swift
//  
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesKentucky : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Kentucky
    case cincinnati
    case blueGrass
    case louisville
    case owensboro
    case barkley
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.kentucky
    }
    
    public var faa : String {
        switch self {
        case .cincinnati: return "CVG"
        case .blueGrass: return "LEX"
        case .louisville: return "SDF"
        case .owensboro: return "OWB"
        case .barkley: return "PAH"
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
        case .cincinnati: return "https://www.cvgairport.com"
        case .blueGrass: return "https://www.bluegrassairport.com"
        case .louisville: return "https://www.flylouisville.com"
        case .owensboro: return "https://flyowb.com"
        case .barkley: return "https://flybarkley.com"
        }
    }
}
