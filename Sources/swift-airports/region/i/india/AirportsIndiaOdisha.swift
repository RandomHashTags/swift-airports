//
//  AirportsIndiaOdisha.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaOdisha : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case rangeilunda
    case bijuPatnaik
    case jeypore
    case veerSurendraSai
    case rourkela
    case utkela
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.odisha
    }
    
    public var iata : String {
        switch self {
        case .rangeilunda: return "QBM"
        case .bijuPatnaik: return "BBI"
        case .jeypore: return "PYB"
        case .veerSurendraSai: return "JRG"
        case .rourkela: return "RRK"
        case .utkela: return "UKE"
        }
    }
    
    public var icao : String {
        switch self {
        case .rangeilunda: return "VEBM"
        case .bijuPatnaik: return "VEBS"
        case .jeypore: return "VEJP"
        case .veerSurendraSai: return "VEJH"
        case .rourkela: return "VERK"
        case .utkela: return "VEUK"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
