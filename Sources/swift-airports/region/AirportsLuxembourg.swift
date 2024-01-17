//
//  AirportsLuxembourg.swift
//
//
//  Created by Evan Anderson on 1/17/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsLuxembourg : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Luxembourg
    
    public typealias SubdivisionLevel1Type = SubdivisionsLuxembourg
    
    case luxembourg
    
    public var country : Country {
        return Country.luxembourg
    }
    
    public var subdivisionLevel1 : SubdivisionsLuxembourg {
        switch self {
        case .luxembourg: return SubdivisionsLuxembourg.luxembourg
        }
    }
    
    public var iata : String {
        switch self {
        case .luxembourg: return "LUX"
        }
    }
    
    public var icao : String {
        switch self {
        case .luxembourg: return "ELLX"
        }
    }
    
    public var websiteURL : String? {
        switch self {
        case .luxembourg: return "http://www.lux-airport.lu"
        }
    }
}
