//
//  AirportsHonduras.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsHonduras : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Honduras
    public typealias SubdivisionLevel1Type = SubdivisionsHonduras
    
    case ahuas
    case brusLaguna
    case cauquira
    case palmerola
    case copanRuinas
    case coyoles
    case erandique
    case celaque
    case jicalapa
    case guanaja
    case goloson
    case laEsperanza
    case laUnion
    case elArrayan
    case palacios
    case puertoLempira
    case juanManuelGalvez
    case ramonVilledaMorales
    case toncontin
    case tela
    case trujillo
    case yoro
    case utila
    case iriona
    case juticalpa
    case limon
    case sulaco
    case tocoa
    
    public var country : Country {
        return Country.honduras
    }
    
    public var subdivisionLevel1 : SubdivisionsHonduras {
        switch self {
        case .ahuas,
                .brusLaguna,
                .cauquira,
                .palacios,
                .puertoLempira:
            return SubdivisionsHonduras.gracias_a_dios
        case .palmerola:
            return SubdivisionsHonduras.comayagua
        case .copanRuinas:
            return SubdivisionsHonduras.copan
        case .coyoles,
                .elArrayan,
                .yoro,
                .sulaco:
            return SubdivisionsHonduras.yoro
        case .erandique,
                .celaque:
            return SubdivisionsHonduras.lempira
        case .jicalapa,
                .laUnion,
                .juticalpa:
            return SubdivisionsHonduras.olancho
        case .guanaja,
                .juanManuelGalvez,
                .utila:
            return SubdivisionsHonduras.bay_islands
        case .goloson,
                .tela:
            return SubdivisionsHonduras.atlantida
        case .laEsperanza:
            return SubdivisionsHonduras.intibuca
        case .ramonVilledaMorales:
            return SubdivisionsHonduras.cortes
        case .toncontin:
            return SubdivisionsHonduras.francisco_morazan
        case .trujillo,
                .iriona,
                .limon,
                .tocoa:
            return SubdivisionsHonduras.colon
        }
    }

    public var iata : String {
        switch self {
        case .ahuas: return "AHS"
        case .brusLaguna: return "BHG"
        case .cauquira: return "CDD"
        case .palmerola: return "XPL"
        case .copanRuinas: return "RUY"
        case .coyoles: return "CYL"
        case .erandique: return "EDQ"
        case .celaque: return "GAC"
        case .jicalapa: return "GUO"
        case .guanaja: return "GJA"
        case .goloson: return "LCE"
        case .laEsperanza: return "LEZ"
        case .laUnion: return "LUI"
        case .elArrayan: return "OAN"
        case .palacios: return "PCH"
        case .puertoLempira: return "PEU"
        case .juanManuelGalvez: return "RTB"
        case .ramonVilledaMorales: return "SAP"
        case .toncontin: return "TGU"
        case .tela: return "TEA"
        case .trujillo: return "TJI"
        case .yoro: return "ORO"
        case .utila: return "UII"
        case .iriona: return "IRN"
        case .juticalpa: return "JUT"
        case .limon: return "LMH"
        case .sulaco: return "SCD"
        case .tocoa: return "TCF"
        }
    }

    public var icao : String {
        switch self {
        case .ahuas: return "MHAH"
        case .brusLaguna: return "MHBL"
        case .cauquira: return "MHCU"
        case .palmerola: return "MHSC"
        case .copanRuinas: return "MHRU"
        case .coyoles: return "MHCS"
        case .erandique: return "MHGU"
        case .celaque: return "MHGS"
        case .jicalapa: return "MHJI"
        case .guanaja: return "MHNJ"
        case .goloson: return "MHLC"
        case .laEsperanza: return "MHLE"
        case .laUnion: return "MHCR"
        case .elArrayan: return "MHOA"
        case .palacios: return "MHPC"
        case .puertoLempira: return "MHPL"
        case .juanManuelGalvez: return "MHRO"
        case .ramonVilledaMorales: return "MHLM"
        case .toncontin: return "MHTG"
        case .tela: return "MHTE"
        case .trujillo: return "MHTJ"
        case .yoro: return "MHYR"
        case .utila: return "MHUT"
        case .iriona: return "MHIR"
        case .juticalpa: return "MHJU"
        case .limon: return "MHLN"
        case .sulaco: return "MHUL"
        case .tocoa: return "MHTO"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
