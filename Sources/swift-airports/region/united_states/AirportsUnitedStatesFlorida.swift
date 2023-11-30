//
//  AirportsUnitedStatesFlorida.swift
//
//
//  Created by Evan Anderson on 11/27/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesFlorida : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Florida
    case daytonaBeach
    case fortLauderdale
    case southwest
    case destin
    case gainesville
    case jacksonville
    case keyWest
    case melbourne
    case miami
    case orlando
    case northwest
    case pensacola
    case puntaGorda
    case orlandoSanford
    case sarasota
    case stPete
    case tallahassee
    case tampa
    case palmBeach
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.florida
    }
    
    public var faa : String {
        switch self {
        case .daytonaBeach: return "DAB"
        case .fortLauderdale: return "FLL"
        case .southwest: return "RSW"
        case .destin: return "VPS"
        case .gainesville: return "GNV"
        case .jacksonville: return "JAX"
        case .keyWest: return "EYW"
        case .melbourne: return "MLB"
        case .miami: return "MIA"
        case .orlando: return "MCO"
        case .northwest: return "ECP"
        case .pensacola: return "PNS"
        case .puntaGorda: return "PGD"
        case .orlandoSanford: return "SFB"
        case .sarasota: return "SRQ"
        case .stPete: return "PIE"
        case .tallahassee: return "TLH"
        case .tampa: return "TPA"
        case .palmBeach: return "PBI"
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
        case .daytonaBeach: return "https://www.flydaytonafirst.com"
        case .fortLauderdale: return "https://www.broward.org/airport/Pages/default.aspx"
        case .southwest: return "https://www.flylcpa.com"
        case .destin: return "https://flyvps.com"
        case .gainesville: return "https://www.flygainesville.com"
        case .jacksonville: return "https://www.flyjacksonville.com"
        case .keyWest: return "https://eyw.com"
        case .melbourne: return "https://www.mlbair.com"
        case .miami: return "https://iflymia.com"
        case .orlando: return "https://orlandoairports.net"
        case .northwest: return "https://www.iflybeaches.com"
        case .pensacola: return "https://www.flypensacola.com"
        case .puntaGorda: return "https://www.flypgd.com"
        case .orlandoSanford: return "https://flysfb.com"
        case .sarasota: return "https://flysrq.com"
        case .stPete: return "http://fly2pie.com"
        case .tallahassee: return "https://www.talgov.com/airport/airport"
        case .tampa: return "https://tampaairport.com"
        case .palmBeach: return "https://www.pbia.org"
        }
    }
}
