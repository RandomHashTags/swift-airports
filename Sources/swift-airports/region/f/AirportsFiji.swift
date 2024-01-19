//
//  AirportsFiji.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsFiji : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Fiji
    public typealias SubdivisionLevel1Type = SubdivisionsFiji
    
    case nadi
    case nausori
    case ba
    case dama
    case castawayIsland
    case cicia
    case gau
    case koro
    case labasa
    case lakeba
    case laucala
    case levuka
    case maloloLailai
    case manaIsland
    case matei
    case moala
    case onoILau
    case pacificHarbour
    case rabi
    case rotuma
    case savusavu
    case vanuabalavu
    case vatukoula
    case vatulele
    case vunisea
    case wakaya
    case yasawaIsland
    
    public var country : Country {
        return Country.fiji
    }
    
    public var subdivisionLevel1 : SubdivisionsFiji {
        switch self {
        case .nadi,
                .ba,
                .castawayIsland,
                .yasawaIsland:
            return SubdivisionsFiji.ba
        case .nausori:
            return SubdivisionsFiji.rewa//, SubdivisionsFiji.tailevu, SubdivisionsFiji.naitasiri // TODO: support?
        case .dama:
            return SubdivisionsFiji.bua
        case .cicia,
                .lakeba,
                .moala,
                .onoILau,
                .vanuabalavu:
            return SubdivisionsFiji.lau
        case .gau,
                .koro,
                .levuka,
                .wakaya:
            return SubdivisionsFiji.lomaiviti
        case .labasa:
            return SubdivisionsFiji.macuata
        case .laucala,
                .matei,
                .rabi,
                .savusavu:
            return SubdivisionsFiji.cakaudrove
        case .maloloLailai,
                .manaIsland:
            return SubdivisionsFiji.nadroga_navosa
        case .pacificHarbour,
                .vatukoula, // TODO: confirm
                .vatulele: // TODO: confirm
            return SubdivisionsFiji.serua
        case .rotuma:
            return SubdivisionsFiji.rotuma
        case .vunisea:
            return SubdivisionsFiji.kadavu
        }
    }
    
    public var iata : String {
        switch self {
        case .nadi: return "NAN"
        case .nausori: return "SUV"
        case .ba: return "BFJ"
        case .dama: return "BVF"
        case .castawayIsland: return "CST"
        case .cicia: return "ICI"
        case .gau: return "NGI"
        case .koro: return "KXF"
        case .labasa: return "LBS"
        case .lakeba: return "LKB"
        case .laucala: return "LUC"
        case .levuka: return "LEV"
        case .maloloLailai: return "PTF"
        case .manaIsland: return "MNF"
        case .matei: return "TVU"
        case .moala: return "MFJ"
        case .onoILau: return "ONU"
        case .pacificHarbour: return "PHR"
        case .rabi: return "RBI"
        case .rotuma: return "RTA"
        case .savusavu: return "SVU"
        case .vanuabalavu: return "VBV"
        case .vatukoula: return "VAU"
        case .vatulele: return "VTF"
        case .vunisea: return "KDV"
        case .wakaya: return "KAY"
        case .yasawaIsland: return "YAS"
        }
    }
    
    public var icao : String {
        switch self {
        case .nadi: return "NFFN"
        case .nausori: return "NFNA"
        case .ba: return "NFFA"
        case .dama: return "NFNU"
        case .castawayIsland: return "NFCS"
        case .cicia: return "NFCI"
        case .gau: return "NFNG"
        case .koro: return "NFNO"
        case .labasa: return "NFNL"
        case .lakeba: return "NFNK"
        case .laucala: return "NFNH"
        case .levuka: return "NFNB"
        case .maloloLailai: return "NFFO"
        case .manaIsland: return "NFMA"
        case .matei: return "NFNM"
        case .moala: return "NFMO"
        case .onoILau: return "NFOL"
        case .pacificHarbour: return "NFND"
        case .rabi: return "NFFR"
        case .rotuma: return "NFNR"
        case .savusavu: return "NFNS"
        case .vanuabalavu: return "NFVB"
        case .vatukoula: return "NFNV"
        case .vatulele: return "NFVL"
        case .vunisea: return "NFKD"
        case .wakaya: return "NFNW"
        case .yasawaIsland: return "NFSW"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
