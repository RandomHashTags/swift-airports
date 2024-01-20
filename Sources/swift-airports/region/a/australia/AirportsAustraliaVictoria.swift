//
//  AirportsAustraliaVictoria.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsAustraliaVictoria : String, AirportAustralia { // https://en.wikipedia.org/wiki/List_of_airports_in_Australia | https://en.wikipedia.org/wiki/List_of_airports_in_Victoria,_Australia
    case ararat
    case avalon
    case bairnsdale
    case benalla
    case bendigo
    case colac
    case corryong
    case echuca
    case geelong
    case hamilton
    case hopetoun
    case horsham
    case kerang
    case latrobe
    case mallacoota
    case melbourne
    case essendon
    case moorabbin
    case mildura
    case mountHotham
    case orbost
    case ouyen
    case portland
    case robinvale
    case westSale
    case shepparton
    case stawell
    case swanHill
    case wangaratta
    case warracknabeal
    case warrnambool
    
    public var subdivisionLevel1 : SubdivisionsAustralia {
        return SubdivisionsAustralia.victoria
    }
    
    public var iata : String {
        switch self {
        case .ararat: return "ARY"
        case .avalon: return "AVV"
        case .bairnsdale: return "BSJ"
        case .benalla: return "BLN"
        case .bendigo: return "BXG"
        case .colac: return "XCO"
        case .corryong: return "CYG"
        case .echuca: return "ECH"
        case .geelong: return "GEX"
        case .hamilton: return "HLT"
        case .hopetoun: return "HTU"
        case .horsham: return "HSM"
        case .kerang: return "KRA"
        case .latrobe: return "TGN"
        case .mallacoota: return "XMC"
        case .melbourne: return "MEL"
        case .essendon: return "MEB"
        case .moorabbin: return "MBW"
        case .mildura: return "MQL"
        case .mountHotham: return "MHU"
        case .orbost: return "RBS"
        case .ouyen: return "OYN"
        case .portland: return "PTJ"
        case .robinvale: return "RBC"
        case .westSale: return "SXE"
        case .shepparton: return "SHT"
        case .stawell: return "SWC"
        case .swanHill: return "SWH"
        case .wangaratta: return "WGT"
        case .warracknabeal: return "WKB"
        case .warrnambool: return "WMB"
        }
    }
    
    public var icao : String {
        switch self {
        case .ararat: return "YARA"
        case .avalon: return "YMAV"
        case .bairnsdale: return "YBNS"
        case .benalla: return "YBLA"
        case .bendigo: return "YBDG"
        case .colac: return "YOLA"
        case .corryong: return "YCRG"
        case .echuca: return "YECH"
        case .geelong: return "YGLG"
        case .hamilton: return "YHML"
        case .hopetoun: return "YHPN"
        case .horsham: return "YHSM"
        case .kerang: return "YKER"
        case .latrobe: return "YLTV"
        case .mallacoota: return "YMCO"
        case .melbourne: return "YMML"
        case .essendon: return "YMEN"
        case .moorabbin: return "YMMB"
        case .mildura: return "YMIA"
        case .mountHotham: return "YHOT"
        case .orbost: return "YORB"
        case .ouyen: return "YOUY"
        case .portland: return "YPOD"
        case .robinvale: return "YROI"
        case .westSale: return "YWSL"
        case .shepparton: return "YSHT"
        case .stawell: return "YSWL"
        case .swanHill: return "YSWH"
        case .wangaratta: return "YWGT"
        case .warracknabeal: return "YWKB"
        case .warrnambool: return "YWBL"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
