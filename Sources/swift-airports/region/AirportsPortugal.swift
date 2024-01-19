//
//  AirportsPortugal.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsPortugal : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Portugal
    public typealias SubdivisionLevel1Type = SubdivisionsPortugal
    
    case beja
    case braga
    case braganca
    case lisbonCascais
    case chaves
    case coimbra
    case faro
    case lisbon
    case portimao
    case franciscoSaCarneiro
    case vilaReal
    case viseu
    case corvo
    case horta
    case flores
    case graciosa
    case pico
    case santaMaria
    case saoJorge
    case joaoPauloII
    case lajes
    case cristianoRonaldoMadeira
    case portoSanto
    
    public var country : Country {
        return Country.portugal
    }
    
    public var subdivisionLevel1 : SubdivisionsPortugal {
        switch self {
        case .beja:
            return SubdivisionsPortugal.beja
        case .braga:
            return SubdivisionsPortugal.braga
        case .braganca:
            return SubdivisionsPortugal.braganca
        case .lisbonCascais,
                .lisbon:
            return SubdivisionsPortugal.lisboa
        case .chaves,
                .vilaReal:
            return SubdivisionsPortugal.vila_real
        case .coimbra:
            return SubdivisionsPortugal.coimbra
        case .faro,
                .portimao:
            return SubdivisionsPortugal.faro
        case .franciscoSaCarneiro:
            return SubdivisionsPortugal.porto
        case .viseu:
            return SubdivisionsPortugal.viseu
        case .corvo,
                .horta,
                .flores,
                .graciosa,
                .pico,
                .santaMaria,
                .saoJorge,
                .joaoPauloII,
                .lajes:
            return SubdivisionsPortugal.azores
        case .cristianoRonaldoMadeira,
                .portoSanto:
            return SubdivisionsPortugal.madeira
        }
    }
    
    public var iata : String {
        switch self {
        case .beja: return "BYJ"
        case .braga: return "BGZ"
        case .braganca: return "BGC"
        case .lisbonCascais: return "CAT"
        case .chaves: return "CHV"
        case .coimbra: return "CBP"
        case .faro: return "FAO"
        case .lisbon: return "LIS"
        case .portimao: return "PRM"
        case .franciscoSaCarneiro: return "OPO"
        case .vilaReal: return "VRL"
        case .viseu: return "VSE"
        case .corvo: return "CVU"
        case .horta: return "HOR"
        case .flores: return "FLW"
        case .graciosa: return "GRW"
        case .pico: return "PIX"
        case .santaMaria: return "SMA"
        case .saoJorge: return "SJZ"
        case .joaoPauloII: return "PDL"
        case .lajes: return "TER"
        case .cristianoRonaldoMadeira: return "FNC"
        case .portoSanto: return "PXO"
        }
    }
    
    public var icao : String {
        switch self {
        case .beja: return "LPBJ"
        case .braga: return "LPBR"
        case .braganca: return "LPBG"
        case .lisbonCascais: return "LPCS"
        case .chaves: return "LPCH"
        case .coimbra: return "LPCO"
        case .faro: return "LPFR"
        case .lisbon: return "LPPT"
        case .portimao: return "LPPM"
        case .franciscoSaCarneiro: return "LPPR"
        case .vilaReal: return "LPVR"
        case .viseu: return "LPVZ"
        case .corvo: return "LPCR"
        case .horta: return "LPHR"
        case .flores: return "LPFL"
        case .graciosa: return "LPGR"
        case .pico: return "LPPI"
        case .santaMaria: return "LPAZ"
        case .saoJorge: return "LPSJ"
        case .joaoPauloII: return "LPPD"
        case .lajes: return "LPLA"
        case .cristianoRonaldoMadeira: return "LPMA"
        case .portoSanto: return "LPPS"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
