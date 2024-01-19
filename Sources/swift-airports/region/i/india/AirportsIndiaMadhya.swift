//
//  AirportsIndiaMadhya.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaMadhya : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case rajaBhoj
    case rajmataVijayaRajeScindia
    case deviAhilyaBaiHolkar
    case jabalpur
    case khajuraho
    case satna
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.madhya_pradesh
    }
    
    public var iata : String {
        switch self {
        case .rajaBhoj: return "BHO"
        case .rajmataVijayaRajeScindia: return "GWL"
        case .deviAhilyaBaiHolkar: return "IDR"
        case .jabalpur: return "JLR"
        case .khajuraho: return "HJR"
        case .satna: return "TNI"
        }
    }
    
    public var icao : String {
        switch self {
        case .rajaBhoj: return "VABP"
        case .rajmataVijayaRajeScindia: return "VIGR"
        case .deviAhilyaBaiHolkar: return "VAID"
        case .jabalpur: return "VAJB"
        case .khajuraho: return "VAKJ"
        case .satna: return "VIST"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
