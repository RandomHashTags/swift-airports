//
//  AirportsUnitedStatesAlaska.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesAlaska : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Alaska
    case merrill
    case ted_stevens
    case bethel
    case merleSmith
    case deadhorse
    case dillingham
    case fairbanks
    case gustavus
    case homer
    case juneau
    case kenai
    case ketchikan
    case kingSalmon
    case klawock
    case kodiak
    case ralphWien
    case nome
    case petersburg
    case sitka
    case unalaska
    case postRogers
    case wrangell
    case yakutat
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.alaska
    }
    
    public var faa : String {
        switch self {
        case .merrill: return "MRI"
        case .ted_stevens: return "ANC"
        case .bethel: return "BET"
        case .merleSmith: return "CDV"
        case .deadhorse: return "SCC"
        case .dillingham: return "DLG"
        case .fairbanks: return "FAI"
        case .gustavus: return "GST"
        case .homer: return "HOM"
        case .juneau: return "JNU"
        case .kenai: return "ENA"
        case .ketchikan: return "KTN"
        case .kingSalmon: return "AKN"
        case .klawock: return "AKW"
        case .kodiak: return "ADQ"
        case .ralphWien: return "OTZ"
        case .nome: return "OME"
        case .petersburg: return "PSG"
        case .sitka: return "SIT"
        case .unalaska: return "DUT"
        case .postRogers: return "BRW"
        case .wrangell: return "WRG"
        case .yakutat: return "YAK"
        }
    }
    
    public var iata : String {
        switch self {
        case .klawock: return "KLW"
        default:
            return faa
        }
    }
    
    public var icao : String {
        switch self {
        case .merrill: return "PAMR"
        case .ted_stevens: return "PANC"
        case .bethel: return "PABE"
        case .merleSmith: return "PACV"
        case .deadhorse: return "PASC"
        case .dillingham: return "PADL"
        case .fairbanks: return "PAFA"
        case .gustavus: return "PAGS"
        case .homer: return "PAHO"
        case .juneau: return "PAJN"
        case .kenai: return "PAEN"
        case .ketchikan: return "PAKT"
        case .kingSalmon: return "PAKN"
        case .klawock: return "PAKW"
        case .kodiak: return "PADQ"
        case .ralphWien: return "PAOT"
        case .nome: return "PAOM"
        case .petersburg: return "PAPG"
        case .sitka: return "PASI"
        case .unalaska: return "PADU"
        case .postRogers: return "PABR"
        case .wrangell: return "PAWG"
        case .yakutat: return "PAYA"
        }
    }
    
    public var websiteURL : String? {
        switch self {
        case .merrill: return "https://www.muni.org/departments/merrill_field/pages/default.aspx"
        case .ted_stevens: return "https://dot.alaska.gov/anc/"
        case .bethel: return nil
        case .merleSmith: return nil
        case .deadhorse: return nil
        case .dillingham: return nil
        case .fairbanks: return "https://dot.alaska.gov/faiiap/"
        case .gustavus: return nil
        case .homer: return nil
        case .juneau: return "https://juneau.org/airport"
        case .kenai: return "https://www.kenai.city/airport"
        case .ketchikan: return nil
        case .kingSalmon: return nil
        case .klawock: return nil
        case .kodiak: return nil
        case .ralphWien: return nil
        case .nome: return nil
        case .petersburg: return nil
        case .sitka: return nil
        case .unalaska: return nil
        case .postRogers: return nil
        case .wrangell: return nil
        case .yakutat: return nil
        }
    }
}
