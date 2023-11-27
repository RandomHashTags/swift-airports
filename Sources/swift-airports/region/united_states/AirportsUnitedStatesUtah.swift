//
//  AirportsUnitedStatesUtah.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesUtah : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Utah
    case cedarCity
    case canyonlands
    case ogdenHinckley
    case provo
    case stGeorge
    case saltLakeCity
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.utah
    }
    
    public var faa : String {
        switch self {
        case .cedarCity: return "CDC"
        case .canyonlands: return "CNY"
        case .ogdenHinckley: return "OGD"
        case .provo: return "PVU"
        case .stGeorge: return "SGU"
        case .saltLakeCity: return "SLC"
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
        case .cedarCity: return "https://www.cedarcity.org/2360/Airport"
        case .canyonlands: return "https://www.grandcountyutah.net/263/Airport"
        case .ogdenHinckley: return "https://www.ogdencity.com/2272/Airport"
        case .provo: return "https://www.provo.org/city-services/airport"
        case .stGeorge: return "https://www.flysgu.com"
        case .saltLakeCity: return "https://slcairport.com"
        }
    }
}
