//
//  AirportsQatar.swift
//
//
//  Created by Evan Anderson on 11/30/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsQatar : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Qatar
    public typealias SubdivisionLevel1Type = SubdivisionsQatar
    
    case doha
    case hamad
    case alUdeid
    
    public var country : Country {
        return Country.qatar
    }
    
    public var subdivisionLevel1 : SubdivisionsQatar {
        return SubdivisionsQatar.ad_dawhah
    }
    
    public var iata : String {
        switch self {
        case .doha: return "DIA"
        case .hamad: return "DOH"
        case .alUdeid: return "XJD"
        }
    }
    
    public var icao : String {
        switch self {
        case .doha: return "OTBD"
        case .hamad: return "OTHH"
        case .alUdeid: return "OTBH"
        }
    }
    
    public var websiteURL : String? {
        switch self {
        case .doha: return "https://dohahamadairport.com"
        case .hamad: return "https://dohahamadairport.com"
        case .alUdeid: return nil
        }
    }
}
