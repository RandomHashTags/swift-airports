//
//  AirportsAustraliaNorthernTerritory.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsAustraliaNorthernTerritory : String, AirportAustralia { // https://en.wikipedia.org/wiki/List_of_airports_in_Australia | https://en.wikipedia.org/wiki/List_of_airports_in_the_Northern_Territory
    case alexandriaStation
    case aliceSprings
    case ammaroo
    case anthonyLagoon
    case finke
    case australDownsStation
    case auvergneStation
    case barklyDowns
    case bathurstIsland
    case delissaville
    case borroloola
    case camfieldStation
    case crokerIsland
    case kalkgurung
    case dalyRiverMission
    case dalyWaters
    case darwin
    case elchoIsland
    case evaDowns
    case lakeEvella
    case southGoulburnIsland
    case theGranites
    case grooteEylandt
    case oenpelli
    case henbury
    case hermannsburg
    case humbertRiver
    case inverway
    case jabiru
    case waveHill
    case dockerRiver
    case katherineTindal
    case kingsCanyon
    case kingsCreekStation
    case hookerCreek
    case lakeNash
    case macdonaldDowns
    case maningrida
    case mannersCreekStation
    case marqua
    case snakeBay
    case milingimbi
    case mountCavenagh
    case mountSandfordStation
    case mountSwan
    case mulgaPark
    case ngukurr
    case gove
    case numbulwar
    case gardenPoint
    case ramingining
    case roperBar
    case smithPoint
    case tennantCreek
    case timberCreek
    case tobermorey
    case ayersRock
    case victoriaRiverDowns
    case portKeats
    case wollogorang
    case yuendumu
    
    public var subdivisionLevel1 : SubdivisionsAustralia {
        return SubdivisionsAustralia.northern_territory
    }
    
    public var iata : String {
        switch self {
        case .alexandriaStation: return "AXL"
        case .aliceSprings: return "ASP"
        case .ammaroo: return "AMX"
        case .anthonyLagoon: return "AYL"
        case .finke: return "FIK"
        case .australDownsStation: return "AWP"
        case .auvergneStation: return "AVG"
        case .barklyDowns: return "BKP"
        case .bathurstIsland: return "BRT"
        case .delissaville: return "DLV"
        case .borroloola: return "BOX"
        case .camfieldStation: return "CFI"
        case .crokerIsland: return "CKI"
        case .kalkgurung: return "KFG"
        case .dalyRiverMission: return "DVR"
        case .dalyWaters: return "DYW"
        case .darwin: return "DRW"
        case .elchoIsland: return "ELC"
        case .evaDowns: return "EVD"
        case .lakeEvella: return "LEL"
        case .southGoulburnIsland: return "GBL"
        case .theGranites: return "GTS"
        case .grooteEylandt: return "GTE"
        case .oenpelli: return "OPI"
        case .henbury: return "HRY"
        case .hermannsburg: return "HMG"
        case .humbertRiver: return "HUB"
        case .inverway: return "IVW"
        case .jabiru: return "JAB"
        case .waveHill: return "WAV"
        case .dockerRiver: return "DKV"
        case .katherineTindal: return "KTR"
        case .kingsCanyon: return "KBJ"
        case .kingsCreekStation: return "KCS"
        case .hookerCreek: return "HOK"
        case .lakeNash: return "LNH"
        case .macdonaldDowns: return "MNW"
        case .maningrida: return "MNG"
        case .mannersCreekStation: return "MFP"
        case .marqua: return "MQE"
        case .snakeBay: return "SNB"
        case .milingimbi: return "MGT"
        case .mountCavenagh: return "MKV"
        case .mountSandfordStation: return "MTD"
        case .mountSwan: return "MSF"
        case .mulgaPark: return "MUP"
        case .ngukurr: return "RPM"
        case .gove: return "GOV"
        case .numbulwar: return "NUB"
        case .gardenPoint: return "GPN"
        case .ramingining: return "RAM"
        case .roperBar: return "RPB"
        case .smithPoint: return "SHU"
        case .tennantCreek: return "TCA"
        case .timberCreek: return "TBK"
        case .tobermorey: return "TYP"
        case .ayersRock: return "AYQ"
        case .victoriaRiverDowns: return "VCD"
        case .portKeats: return "PKT"
        case .wollogorang: return "WLL"
        case .yuendumu: return "YUE"
        }
    }
    
    public var icao : String {
        switch self {
        case .alexandriaStation: return "YALX"
        case .aliceSprings: return "YBAS"
        case .ammaroo: return "YAMM"
        case .anthonyLagoon: return "YANL"
        case .finke: return "YFNE"
        case .australDownsStation: return "YAUS"
        case .auvergneStation: return "YAUV"
        case .barklyDowns: return "YBAW"
        case .bathurstIsland: return "YBTI"
        case .delissaville: return "YDLV"
        case .borroloola: return "YBRL"
        case .camfieldStation: return "YCFD"
        case .crokerIsland: return "YCKI"
        case .kalkgurung: return "YKKG"
        case .dalyRiverMission: return "YDMN"
        case .dalyWaters: return "YDLW"
        case .darwin: return "YPDN"
        case .elchoIsland: return "YELD"
        case .evaDowns: return "YEVA"
        case .lakeEvella: return "YLEV"
        case .southGoulburnIsland: return "YGBI"
        case .theGranites: return "YTGT"
        case .grooteEylandt: return "YGTE"
        case .oenpelli: return "YOEN"
        case .henbury: return "YHBY"
        case .hermannsburg: return "YHMB"
        case .humbertRiver: return "YHBR"
        case .inverway: return "YINW"
        case .jabiru: return "YJAB"
        case .waveHill: return "YWAV"
        case .dockerRiver: return "YDVR"
        case .katherineTindal: return "YPTN"
        case .kingsCanyon: return "YKCA"
        case .kingsCreekStation: return "YKCS"
        case .hookerCreek: return "YHOO"
        case .lakeNash: return "YLKN"
        case .macdonaldDowns: return "YMDS"
        case .maningrida: return "YMGD"
        case .mannersCreekStation: return "YMCR"
        case .marqua: return "YMQA"
        case .snakeBay: return "YSNK"
        case .milingimbi: return "YMGB"
        case .mountCavenagh: return "YMVG"
        case .mountSandfordStation: return "YMSF"
        case .mountSwan: return "YMNS"
        case .mulgaPark: return "YMUP"
        case .ngukurr: return "YNGU"
        case .gove: return "YPGV"
        case .numbulwar: return "YNUM"
        case .gardenPoint: return "YGPT"
        case .ramingining: return "YRNG"
        case .roperBar: return "YRRB"
        case .smithPoint: return "YSMP"
        case .tennantCreek: return "YTNK"
        case .timberCreek: return "YTBR"
        case .tobermorey: return "YTMY"
        case .ayersRock: return "YAYE"
        case .victoriaRiverDowns: return "YVRD"
        case .portKeats: return "YPKT"
        case .wollogorang: return "YWOR"
        case .yuendumu: return "YYND"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
