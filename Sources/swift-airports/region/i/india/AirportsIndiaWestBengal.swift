//
//  AirportsIndiaWestBengal.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaWestBengal : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India | https://en.wikipedia.org/wiki/List_of_airports_in_West_Bengal
    case balurghat
    case coochBehar
    case kaziNazrulIslam
    case netajiSubhasChandraBose
    case malda
    case bagdogra
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.west_bengal
    }
    
    public var iata : String {
        switch self {
        case .balurghat: return "RGH"
        case .coochBehar: return "COH"
        case .kaziNazrulIslam: return "RDP"
        case .netajiSubhasChandraBose: return "CCU"
        case .malda: return "LDA"
        case .bagdogra: return "IXB"
        }
    }
    
    public var icao : String {
        switch self {
        case .balurghat: return "VEBG"
        case .coochBehar: return "VECO"
        case .kaziNazrulIslam: return "VEDG"
        case .netajiSubhasChandraBose: return "VECC"
        case .malda: return "VEMH"
        case .bagdogra: return "VEBD"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
