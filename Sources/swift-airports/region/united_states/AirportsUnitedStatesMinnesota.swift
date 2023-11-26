//
//  AirportsUnitedStatesMinnesota.swift
//
//
//  Created by Evan Anderson on 11/23/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesMinnesota : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Minnesota
    case bemidji
    case brainerd
    case duluth
    case range
    case minneapolis_saint_paul
    case rochester
    case saint_cloud
    
    public var subdivision_level_1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.minnesota
    }
    /*public var citiesServed : [any SovereignStateCity] {
        switch self {
        case .minneapolis_saint_paul: return [CitiesUnitedStatesMinnesota.minneapolis, CitiesUnitedStatesMinnesota.saint_paul]
        default: return []
        }
    }*/
    
    public var faa : String {
        switch self {
        case .bemidji: return "BJI"
        case .brainerd: return "BRD"
        case .duluth: return "DLH"
        case .range: return "HIB"
        case .minneapolis_saint_paul: return "MSP"
        case .rochester: return "RST"
        case .saint_cloud: return "STC"
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
        case .bemidji: return "https://www.bemidjiairport.org"
        case .brainerd: return "https://brainerdairport.com"
        case .duluth: return "https://duluthairport.com"
        case .range: return "https://www.rangeregionalairport.com"
        case .minneapolis_saint_paul: return "https://www.mspairport.com"
        case .rochester: return "https://flyrst.com"
        case .saint_cloud: return "https://stcloudairport.com"
        }
    }
}
