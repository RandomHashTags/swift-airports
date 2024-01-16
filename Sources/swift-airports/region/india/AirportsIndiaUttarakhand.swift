//
//  AirportsIndiaUttarakhand.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaUttarakhand : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case dehradun
    case pantnagar
    case pithoragarh
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.uttarakhand
    }
    
    public var iata : String {
        switch self {
        case .dehradun: return "DED"
        case .pantnagar: return "PGH"
        case .pithoragarh: return "NNS"
        }
    }
    
    public var icao : String {
        switch self {
        case .dehradun: return "VIDN"
        case .pantnagar: return "VIPT"
        case .pithoragarh: return "VIDF"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
