//
//  AirportsIreland.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIreland : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_the_Republic_of_Ireland
    public typealias SubdivisionLevel1Type = SubdivisionsIreland
    
    case cork
    case donegal
    case dublin
    case galway
    case kerry
    case irelandWest
    case shannon
    case sligo
    case waterford
    case bantry
    case belmullet
    case connemara
    case inisheer
    case inishmaan
    case inishmore
    case kilkenny
    case letterkenny
    
    public var country : Country {
        return Country.ireland
    }
    
    public var subdivisionLevel1 : SubdivisionsIreland {
        switch self {
        case .cork,
                .kerry,
                .shannon,
                .waterford,
                .bantry:
            return SubdivisionsIreland.munster
        case .donegal,
                .letterkenny:
            return SubdivisionsIreland.ulster
        case .dublin,
                .kilkenny:
            return SubdivisionsIreland.leinster
        case .galway,
                .irelandWest,
                .sligo,
                .belmullet,
                .connemara,
                .inisheer,
                .inishmaan,
                .inishmore:
            return SubdivisionsIreland.connacht
        }
    }
    
    public var iata : String {
        switch self {
        case .cork: return "ORK"
        case .donegal: return "CFN"
        case .dublin: return "DUB"
        case .galway: return "GWY"
        case .kerry: return "KIR"
        case .irelandWest: return "NOC"
        case .shannon: return "SNN"
        case .sligo: return "SXL"
        case .waterford: return "WAT"
        case .bantry: return "BYT"
        case .belmullet: return "BLY"
        case .connemara: return "NNR"
        case .inisheer: return "INQ"
        case .inishmaan: return "IIA"
        case .inishmore: return "IOR"
        case .kilkenny: return "KKY"
        case .letterkenny: return "LTR"
        }
    }
    
    public var icao : String {
        switch self {
        case .cork: return "EICK"
        case .donegal: return "EIDL"
        case .dublin: return "EIDW"
        case .galway: return "EICM"
        case .kerry: return "EIKY"
        case .irelandWest: return "EIKN"
        case .shannon: return "EINN"
        case .sligo: return "EISG"
        case .waterford: return "EIWF"
        case .bantry: return "EIBN"
        case .belmullet: return "EIBT"
        case .connemara: return "EICA"
        case .inisheer: return "EIIR"
        case .inishmaan: return "EIMN"
        case .inishmore: return "EIIM"
        case .kilkenny: return "EIKK"
        case .letterkenny: return "EILT"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
