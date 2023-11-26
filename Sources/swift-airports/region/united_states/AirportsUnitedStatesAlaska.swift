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
    
    public var subdivision_level_1 : SubdivisionsUnitedStates {
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
        let suffix:String
        switch self {
        case .merrill:
            suffix = "MR"
            break
        case .ted_stevens:
            suffix = "NC"
            break
        case .bethel:
            suffix = "BE"
            break
        case .merleSmith:
            suffix = "CV"
            break
        case .deadhorse:
            suffix = "SC"
            break
        case .dillingham:
            suffix = "DL"
            break
        case .fairbanks:
            suffix = "FA"
            break
        case .gustavus:
            suffix = "GS"
            break
        case .homer:
            suffix = "HO"
            break
        case .juneau:
            suffix = "JN"
            break
        case .kenai:
            suffix = "EN"
            break
        case .ketchikan:
            suffix = "KT"
            break
        case .kingSalmon:
            suffix = "KN"
            break
        case .klawock:
            suffix = "KW"
            break
        case .kodiak:
            suffix = "DQ"
            break
        case .ralphWien:
            suffix = "OT"
            break
        case .nome:
            suffix = "OM"
            break
        case .petersburg:
            suffix = "PG"
            break
        case .sitka:
            suffix = "SI"
            break
        case .unalaska:
            suffix = "DU"
            break
        case .postRogers:
            suffix = "BR"
            break
        case .wrangell:
            suffix = "WG"
            break
        case .yakutat:
            suffix = "YA"
            break
        }
        return "PA" + suffix
    }
    
    public var website : String? {
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
