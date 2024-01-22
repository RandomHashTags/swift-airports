//
//  AirportsZambia.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsZambia : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Zambia
    public typealias SubdivisionLevel1Type = SubdivisionsZambia
    
    case kasompe
    case chipata
    case milliken
    case kalabo
    case kaoma
    case kasabaBay
    case kasama
    case southdowns
    case harryMwangaNkumbula
    case lukulu
    case kennethKaunda
    case mansa
    case mbala
    case mfuwe
    case mongu
    case simonMwansaKapwepwe
    case ngoma
    case senanga
    case sesheke
    case solwezi
    case zambezi
    
    public var country : Country {
        return Country.zambia
    }
    
    public var subdivisionLevel1 : SubdivisionsZambia {
        switch self {
        case .kasompe,
                .southdowns,
                .simonMwansaKapwepwe:
            return SubdivisionsZambia.copperbelt
        case .chipata,
                .mfuwe:
            return SubdivisionsZambia.eastern
        case .milliken:
            return SubdivisionsZambia.central
        case .kalabo,
                .kaoma,
                .lukulu,
                .mongu,
                .senanga,
                .sesheke:
            return SubdivisionsZambia.western
        case .kasabaBay,
                .kasama:
            return SubdivisionsZambia.northern
        case .harryMwangaNkumbula,
                .ngoma:
            return SubdivisionsZambia.southern
        case .kennethKaunda:
            return SubdivisionsZambia.lusaka
        case .mansa,
                .mbala:
            return SubdivisionsZambia.luapula
        case .solwezi,
                .zambezi:
            return SubdivisionsZambia.north_western
        }
    }

    public var iata : String {
        switch self {
        case .kasompe: return "CGJ"
        case .chipata: return "CIP"
        case .milliken: return "QKE"
        case .kalabo: return "KLB"
        case .kaoma: return "KMZ"
        case .kasabaBay: return "ZKB"
        case .kasama: return "KAA"
        case .southdowns: return "KIW"
        case .harryMwangaNkumbula: return "LVI"
        case .lukulu: return "LXU"
        case .kennethKaunda: return "LUN"
        case .mansa: return "MNS"
        case .mbala: return "MMQ"
        case .mfuwe: return "MFU"
        case .mongu: return "MNR"
        case .simonMwansaKapwepwe: return "NLA"
        case .ngoma: return "ZGM"
        case .senanga: return "SXG"
        case .sesheke: return "SJQ"
        case .solwezi: return "SLI"
        case .zambezi: return "BBZ"
        }
    }

    public var icao : String {
        switch self {
        case .kasompe: return "FLKE"
        case .chipata: return "FLCP"
        case .milliken: return "FLKW"
        case .kalabo: return "FLKL"
        case .kaoma: return "FLKO"
        case .kasabaBay: return "FLKY"
        case .kasama: return "FLKS"
        case .southdowns: return "FLSO"
        case .harryMwangaNkumbula: return "FLHN"
        case .lukulu: return "FLLK"
        case .kennethKaunda: return "FLKK"
        case .mansa: return "FLMA"
        case .mbala: return "FLBA"
        case .mfuwe: return "FLMF"
        case .mongu: return "FLMG"
        case .simonMwansaKapwepwe: return "FLSK"
        case .ngoma: return "FLNA"
        case .senanga: return "FLSN"
        case .sesheke: return "FLSS"
        case .solwezi: return "FLSW"
        case .zambezi: return "FLZB"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
