//
//  AirportsFinland.swift
//
//
//  Created by Evan Anderson on 1/17/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsFinland : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Finland
    public typealias SubdivisionLevel1Type = SubdivisionsFinland
    
    case enontekio
    case helsinkiMalmi
    case helsinkiVantaa
    case hyvinkaa
    case ivalo
    case joensuu
    case jyvaskyla
    case halli
    case kajaani
    case kauhava
    case kemiTornio
    case kittila
    case kokkolaPietarsarri
    case utti
    case kuopio
    case kuusamo
    case lappeenranta
    case mariehamn
    case mikkeli
    case oulu
    case pori
    case rovaniemi
    case savonlinna
    case seinajoki
    case tamperePirkkala
    case turku
    case vaasa
    case varkaus
    
    case kauhajoki
    case kitee
    case sodankyla
    
    public var country : Country {
        return Country.finland
    }
    
    public var subdivisionLevel1 : SubdivisionsFinland {
        switch self {
        case .enontekio,
                .ivalo,
                .kemiTornio,
                .kittila,
                .rovaniemi,
                .sodankyla:
            return SubdivisionsFinland.lapland
        case .helsinkiMalmi,
                .helsinkiVantaa,
                .hyvinkaa:
            return SubdivisionsFinland.uusimaa
        case .joensuu,
                .kitee:
            return SubdivisionsFinland.north_karelia
        case .jyvaskyla,
                .halli:
            return SubdivisionsFinland.central_finland
        case .kajaani:
            return SubdivisionsFinland.kainuu
        case .kauhava,
                .seinajoki,
                .kauhajoki:
            return SubdivisionsFinland.south_ostrobothnia
        case .kokkolaPietarsarri,
                .vaasa:
            return SubdivisionsFinland.ostrobothnia
        case .utti:
            return SubdivisionsFinland.kymenlaakso
        case .kuopio:
            return SubdivisionsFinland.north_savo
        case .kuusamo,
                .oulu:
            return SubdivisionsFinland.north_ostrobothnia
        case .lappeenranta:
            return SubdivisionsFinland.south_karelia
        case .mariehamn:
            return SubdivisionsFinland.aland
        case .mikkeli,
                .savonlinna,
                .varkaus:
            return SubdivisionsFinland.south_savo
        case .pori:
            return SubdivisionsFinland.satakunta
        case .tamperePirkkala:
            return SubdivisionsFinland.pirkanmaa
        case .turku:
            return SubdivisionsFinland.southwest_finland
        }
    }
    
    public var iata : String {
        switch self {
        case .enontekio: return "ENF"
        case .helsinkiMalmi: return "HEM"
        case .helsinkiVantaa: return "HEL"
        case .hyvinkaa: return "HYV"
        case .ivalo: return "IVL"
        case .joensuu: return "JOE"
        case .jyvaskyla: return "JYV"
        case .halli: return "KEV"
        case .kajaani: return "KAJ"
        case .kauhava: return "KAU"
        case .kemiTornio: return "KEM"
        case .kittila: return "KTT"
        case .kokkolaPietarsarri: return "KOK"
        case .utti: return "UTI"
        case .kuopio: return "KUO"
        case .kuusamo: return "KAO"
        case .lappeenranta: return "LPP"
        case .mariehamn: return "MHQ"
        case .mikkeli: return "MIK"
        case .oulu: return "OUL"
        case .pori: return "POR"
        case .rovaniemi: return "RVN"
        case .savonlinna: return "SVL"
        case .seinajoki: return "SJY"
        case .tamperePirkkala: return "TMP"
        case .turku: return "TKU"
        case .vaasa: return "VAA"
        case .varkaus: return "VRK"
            
        case .kauhajoki: return "KHJ"
        case .kitee: return "KTQ"
        case .sodankyla: return "SOT"
        }
    }
    
    public var icao : String {
        switch self {
        case .enontekio: return "EFET"
        case .helsinkiMalmi: return "EFHF"
        case .helsinkiVantaa: return "EFHK"
        case .hyvinkaa: return "EFHV"
        case .ivalo: return "EFIV"
        case .joensuu: return "EFJO"
        case .jyvaskyla: return "EFJY"
        case .halli: return "EFHA"
        case .kajaani: return "EFKI"
        case .kauhava: return "EFKA"
        case .kemiTornio: return "EFKE"
        case .kittila: return "EFKT"
        case .kokkolaPietarsarri: return "EFKK"
        case .utti: return "EFUT"
        case .kuopio: return "EFKU"
        case .kuusamo: return "EFKS"
        case .lappeenranta: return "EFLP"
        case .mariehamn: return "EFMA"
        case .mikkeli: return "EFMI"
        case .oulu: return "EFOU"
        case .pori: return "EFPO"
        case .rovaniemi: return "EFRO"
        case .savonlinna: return "EFSA"
        case .seinajoki: return "EFSI"
        case .tamperePirkkala: return "EFTP"
        case .turku: return "EFTU"
        case .vaasa: return "EFVA"
        case .varkaus: return "EFVR"
            
        case .kauhajoki: return "EFKJ"
        case .kitee: return "EFIT"
        case .sodankyla: return "EFSO"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
