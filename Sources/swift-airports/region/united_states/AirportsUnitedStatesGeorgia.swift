//
//  AirportsUnitedStatesGeorgia.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesGeorgia : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Georgia
    case southwest
    case hartsfield
    case augusta
    case brunswick
    case columbus
    case middle
    case savannah
    case valdosta
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.georgia
    }
    
    public var faa : String {
        switch self {
        case .southwest: return "ABY"
        case .hartsfield: return "ATL"
        case .augusta: return "AGS"
        case .brunswick: return "BQK"
        case .columbus: return "CSG"
        case .middle: return "MCN"
        case .savannah: return "SAV"
        case .valdosta: return "VLD"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String? {
        switch self {
        case .southwest: return nil
        case .hartsfield: return "https://www.atl.com"
        case .augusta: return nil
        case .brunswick: return "https://flygcairports.com"
        case .columbus: return "https://www.flycolumbusga.com"
        case .middle: return "https://www.iflymacon.com/index.cms"
        case .savannah: return "https://savannahairport.com"
        case .valdosta: return "https://flyvaldosta.com"
        }
    }
}
