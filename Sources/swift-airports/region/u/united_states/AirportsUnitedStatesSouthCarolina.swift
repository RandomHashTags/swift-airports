//
//  AirportsUnitedStatesSouthCarolina.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesSouthCarolina : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_South_Carolina
    case charleston
    case columbia
    case florence
    case greenville
    case hiltonHead
    case myrtleBeach
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.south_carolina
    }
    
    public var faa : String {
        switch self {
        case .charleston: return "CHS"
        case .columbia: return "CAE"
        case .florence: return "FLO"
        case .greenville: return "GSP"
        case .hiltonHead: return "HXD"
        case .myrtleBeach: return "MYR"
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
        case .charleston: return "https://www.iflychs.com"
        case .columbia: return "https://flycae.com"
        case .florence: return "https://www.flyflo.us"
        case .greenville: return "https://gspairport.com"
        case .hiltonHead: return "https://www.hiltonheadairport.com"
        case .myrtleBeach: return "https://www.flymyrtlebeach.com"
        }
    }
}
