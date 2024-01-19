//
//  AirportsRomania.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsRomania : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Romania
    public typealias SubdivisionLevel1Type = SubdivisionsRomania
    
    case arad
    case bacauGeorgeEnescu
    case baiaMare
    case bucharestAurelVlaicu
    case bucharestHenriCoanda
    case brasovGhimbav
    case clujAvramIancu
    case constantaMihailKogalniceanu
    case craiova
    case iasi
    case oradea
    case satuMare
    case sibiu
    case suceavaStefancelMare
    case transilvaniaTarguMures
    case timisoaraTraianVuia
    case deltaDunariiTulcea
    case caransebes
    case saulesti
    
    public var country : Country {
        return Country.romania
    }
    
    public var subdivisionLevel1 : SubdivisionsRomania {
        switch self {
        case .arad:
            return SubdivisionsRomania.arad
        case .bacauGeorgeEnescu:
            return SubdivisionsRomania.bacau
        case .baiaMare:
            return SubdivisionsRomania.maramures
        case .bucharestAurelVlaicu,
                .bucharestHenriCoanda:
            return SubdivisionsRomania.bucharest
        case .brasovGhimbav:
            return SubdivisionsRomania.brasov
        case .clujAvramIancu:
            return SubdivisionsRomania.cluj
        case .constantaMihailKogalniceanu:
            return SubdivisionsRomania.constanta
        case .craiova:
            return SubdivisionsRomania.dolj
        case .iasi:
            return SubdivisionsRomania.iasi
        case .oradea:
            return SubdivisionsRomania.bihor
        case .satuMare:
            return SubdivisionsRomania.satu_mare
        case .sibiu:
            return SubdivisionsRomania.sibiu
        case .suceavaStefancelMare:
            return SubdivisionsRomania.suceava
        case .transilvaniaTarguMures:
            return SubdivisionsRomania.mures
        case .timisoaraTraianVuia:
            return SubdivisionsRomania.timis
        case .deltaDunariiTulcea:
            return SubdivisionsRomania.tulcea
        case .caransebes:
            return SubdivisionsRomania.caras_severin
        case .saulesti:
            return SubdivisionsRomania.hunedoara
        }
    }
    
    public var iata : String {
        switch self {
        case .arad: return "ARW"
        case .bacauGeorgeEnescu: return "BCM"
        case .baiaMare: return "BAY"
        case .bucharestAurelVlaicu: return "BBU"
        case .bucharestHenriCoanda: return "OTP"
        case .brasovGhimbav: return "GHV"
        case .clujAvramIancu: return "CLJ"
        case .constantaMihailKogalniceanu: return "CND"
        case .craiova: return "CRA"
        case .iasi: return "IAS"
        case .oradea: return "OMR"
        case .satuMare: return "SUJ"
        case .sibiu: return "SBZ"
        case .suceavaStefancelMare: return "SCV"
        case .transilvaniaTarguMures: return "TGM"
        case .timisoaraTraianVuia: return "TSR"
        case .deltaDunariiTulcea: return "TCE"
        case .caransebes: return "CSB"
        case .saulesti: return "DVA"
        }
    }
    
    public var icao : String {
        switch self {
        case .arad: return "LRAR"
        case .bacauGeorgeEnescu: return "LRBC"
        case .baiaMare: return "LRBM"
        case .bucharestAurelVlaicu: return "LRBS"
        case .bucharestHenriCoanda: return "LROP"
        case .brasovGhimbav: return "LRBV"
        case .clujAvramIancu: return "LRCL"
        case .constantaMihailKogalniceanu: return "LRCK"
        case .craiova: return "LRCV"
        case .iasi: return "LRIA"
        case .oradea: return "LROD"
        case .satuMare: return "LRSM"
        case .sibiu: return "LRSB"
        case .suceavaStefancelMare: return "LRSV"
        case .transilvaniaTarguMures: return "LRTM"
        case .timisoaraTraianVuia: return "LRTR"
        case .deltaDunariiTulcea: return "LRTC"
        case .caransebes: return "LRCS"
        case .saulesti: return "LRDV"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
