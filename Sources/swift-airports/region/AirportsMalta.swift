//
//  AirportsMalta.swift
//
//
//  Created by Evan Anderson on 1/17/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsMalta : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Malta
    
    public typealias SubdivisionLevel1Type = SubdivisionsMalta
    
    case malta
    case xewkija
    
    public var country : Country {
        return Country.malta
    }
    
    public var subdivisionLevel1 : SubdivisionsMalta {
        switch self {
        case .malta: return SubdivisionsMalta.luqa
        case .xewkija: return SubdivisionsMalta.zebbug_gozo
        }
    }
    
    public var iata : String {
        switch self {
        case .malta: return "MLA"
        case .xewkija: return "GZM"
        }
    }
    
    public var icao : String {
        switch self {
        case .malta: return "LMML"
        case .xewkija: return "LMMG"
        }
    }
    
    public var websiteURL : String? {
        switch self {
        case .malta: return "https://www.maltairport.com"
        case .xewkija: return nil
        }
    }
}
