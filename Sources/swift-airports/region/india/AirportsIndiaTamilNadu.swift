//
//  AirportsIndiaTamilNadu.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaTamilNadu : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case anna
    case coimbatore
    case madurai
    case neyveli
    case salem
    case thanjavur
    case tuticorin
    case tiruchirappalli
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.tamil_nadu
    }
    
    public var iata : String {
        switch self {
        case .anna: return "MAA"
        case .coimbatore: return "CJB"
        case .madurai: return "IXM"
        case .neyveli: return "NVY"
        case .salem: return "SXV"
        case .thanjavur: return "TJV"
        case .tuticorin: return "TCR"
        case .tiruchirappalli: return "TRZ"
        }
    }
    
    public var icao : String {
        switch self {
        case .anna: return "VOMM"
        case .coimbatore: return "VOCB"
        case .madurai: return "VOMD"
        case .neyveli: return "VONY"
        case .salem: return "VOSM"
        case .thanjavur: return "VOTJ"
        case .tuticorin: return "VOTK"
        case .tiruchirappalli: return "VOTR"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
