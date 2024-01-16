//
//  AirportsIndiaAndhra.swift
//  
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaAndhra : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case kadapa
    //case donakonda
    case kurnool
    case sriSathya
    case rajahmundry
    case tirupati
    case vijayawada
    case visakhapatnam
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.andhra_pradesh
    }
    
    public var iata : String {
        switch self {
        case .kadapa: return "CDP"
        case .kurnool: return "KJB"
        case .sriSathya: return "PUT"
        case .rajahmundry: return "RJA"
        case .tirupati: return "TIR"
        case .vijayawada: return "VGA"
        case .visakhapatnam: return "VTZ"
        }
    }
    
    public var icao : String {
        switch self {
        case .kadapa: return "VOCP"
        case .kurnool: return "VOKU"
        case .sriSathya: return "VOPN"
        case .rajahmundry: return "VORY"
        case .tirupati: return "VOTP"
        case .vijayawada: return "VOBZ"
        case .visakhapatnam: return "VOVZ"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
