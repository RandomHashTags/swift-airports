//
//  AirportsUnitedStatesMaine.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesMaine : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Maine
    case bangor
    case portland
    case presqueIsle
    case knox
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.maine
    }
    
    public var faa : String {
        switch self {
        case .bangor: return "BGR"
        case .portland: return "PWM"
        case .presqueIsle: return "PQI"
        case .knox: return "RKD"
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
        case .bangor: return "https://flybangor.com"
        case .portland: return "https://portlandjetport.org"
        case .presqueIsle: return "https://www.flypresqueisle.com"
        case .knox: return "https://knoxcountymaine.gov/index.asp?Type=B_BASIC&SEC=%7BCC504E7C-164D-470F-B75E-5569CACFD927%7D"
        }
    }
}
