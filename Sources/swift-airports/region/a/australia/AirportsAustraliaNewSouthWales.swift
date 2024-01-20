//
//  AirportsAustraliaNewSouthWales.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsAustraliaNewSouthWales : String, AirportAustralia { // https://en.wikipedia.org/wiki/List_of_airports_in_Australia | https://en.wikipedia.org/wiki/List_of_airports_in_New_South_Wales
    case albury
    case armidale
    case ballinaByronGateway
    case balranald
    case bathurst
    case bourke
    case brewarrina
    case brokenHill
    case camden
    case cessnock
    case cobar
    case coffsHarbour
    case collarenebri
    case condobolin
    case coolah
    case coomaSnowyMountains
    case coonabarabran
    case coonamble
    case cootamundra
    case corowa
    case cowra
    case deniliquin
    case dubboCity
    case evansHeadMemorial
    case finley
    case forbes
    case forsterWallisIsland
    case glenInnes
    case goulburn
    case clarenceValley
    case griffith
    case gunnedah
    case hay
    case inverell
    case kempsey
    case lakeMacquarie
    case lightningRidge
    case lismore
    case lordHoweIsland
    case maitland
    case merimbula
    case moree
    case moruya
    case mudgee
    case nambuccaHeads
    case narrabri
    case narrandera
    case newcastle
    case nyngan
    case orange
    case parkes
    case portMacquarie
    case quirindi
    case scone
    case shellharbour
    case bankstown
    case sydney
    case roseBayWater
    case tamworth
    case taree
    case temora
    case tibooburra
    case tocumwal
    case tumut
    case waggaWagga
    case walcha
    case walgett
    case westWyalong
    case wilcannia
    case young
    
    public var subdivisionLevel1 : SubdivisionsAustralia {
        return SubdivisionsAustralia.new_south_wales
    }
    
    public var iata : String {
        switch self {
        case .albury: return "ABX"
        case .armidale: return "ARM"
        case .ballinaByronGateway: return "BNK"
        case .balranald: return "BZD"
        case .bathurst: return "BHS"
        case .bourke: return "BRK"
        case .brewarrina: return "BWQ"
        case .brokenHill: return "BHQ"
        case .camden: return "CDU"
        case .cessnock: return "CES"
        case .cobar: return "CAZ"
        case .coffsHarbour: return "CFS"
        case .collarenebri: return "CRB"
        case .condobolin: return "CBX"
        case .coolah: return "CLH"
        case .coomaSnowyMountains: return "OOM"
        case .coonabarabran: return "COJ"
        case .coonamble: return "CNB"
        case .cootamundra: return "CMD"
        case .corowa: return "CWW"
        case .cowra: return "CWT"
        case .deniliquin: return "DNQ"
        case .dubboCity: return "DBO"
        case .evansHeadMemorial: return "EVH"
        case .finley: return "FLY"
        case .forbes: return "FRB"
        case .forsterWallisIsland: return "FOT"
        case .glenInnes: return "GLI"
        case .goulburn: return "GUL"
        case .clarenceValley: return "GFN"
        case .griffith: return "GFF"
        case .gunnedah: return "GUH"
        case .hay: return "HXX"
        case .inverell: return "IVR"
        case .kempsey: return "KPS"
        case .lakeMacquarie: return "BEO"
        case .lightningRidge: return "LHG"
        case .lismore: return "LSY"
        case .lordHoweIsland: return "LDH"
        case .maitland: return "MTL"
        case .merimbula: return "MIM"
        case .moree: return "MRZ"
        case .moruya: return "MYA"
        case .mudgee: return "DGE"
        case .nambuccaHeads: return "NBH"
        case .narrabri: return "NAA"
        case .narrandera: return "NRA"
        case .newcastle: return "NTL"
        case .nyngan: return "NYN"
        case .orange: return "OAG"
        case .parkes: return "PKE"
        case .portMacquarie: return "PQQ"
        case .quirindi: return "UIR"
        case .scone: return "NSO"
        case .shellharbour: return "WOL"
        case .bankstown: return "BWU"
        case .sydney: return "SYD"
        case .roseBayWater: return "RSE"
        case .tamworth: return "TMW"
        case .taree: return "TRO"
        case .temora: return "TEM"
        case .tibooburra: return "TYB"
        case .tocumwal: return "TCW"
        case .tumut: return "TUM"
        case .waggaWagga: return "WGA"
        case .walcha: return "WLC"
        case .walgett: return "WGE"
        case .westWyalong: return "WWY"
        case .wilcannia: return "WIO"
        case .young: return "NGA"
        }
    }
    
    public var icao : String {
        switch self {
        case .albury: return "YMAY"
        case .armidale: return "YARM"
        case .ballinaByronGateway: return "YBNA"
        case .balranald: return "YBRN"
        case .bathurst: return "YBTH"
        case .bourke: return "YBKE"
        case .brewarrina: return "YBRW"
        case .brokenHill: return "YBHI"
        case .camden: return "YSCN"
        case .cessnock: return "YCNK"
        case .cobar: return "YCBA"
        case .coffsHarbour: return "YCFS"
        case .collarenebri: return "YCBR"
        case .condobolin: return "YCDO"
        case .coolah: return "YCAH"
        case .coomaSnowyMountains: return "YCOM"
        case .coonabarabran: return "YCBB"
        case .coonamble: return "YCNM"
        case .cootamundra: return "YCTM"
        case .corowa: return "YCOR"
        case .cowra: return "YCWR"
        case .deniliquin: return "YDLQ"
        case .dubboCity: return "YSDU"
        case .evansHeadMemorial: return "YEVD"
        case .finley: return "YFIL"
        case .forbes: return "YFBS"
        case .forsterWallisIsland: return "YFST"
        case .glenInnes: return "YGLI"
        case .goulburn: return "YGLB"
        case .clarenceValley: return "YGFN"
        case .griffith: return "YGTH"
        case .gunnedah: return "YGDH"
        case .hay: return "YHAY"
        case .inverell: return "YIVL"
        case .kempsey: return "YKMP"
        case .lakeMacquarie: return "YLMQ"
        case .lightningRidge: return "YLRD"
        case .lismore: return "YLIS"
        case .lordHoweIsland: return "YLHI"
        case .maitland: return "YMND"
        case .merimbula: return "YMER"
        case .moree: return "YMOR"
        case .moruya: return "YMRY"
        case .mudgee: return "YMDG"
        case .nambuccaHeads: return "YNHS"
        case .narrabri: return "YNBR"
        case .narrandera: return "YNAR"
        case .newcastle: return "YWLM"
        case .nyngan: return "YNYN"
        case .orange: return "YORG"
        case .parkes: return "YPKS"
        case .portMacquarie: return "YPMQ"
        case .quirindi: return "YQDI"
        case .scone: return "YSCO"
        case .shellharbour: return "YSHL"
        case .bankstown: return "YSBK"
        case .sydney: return "YSSY"
        case .roseBayWater: return "YRAY"
        case .tamworth: return "YSTW"
        case .taree: return "YTRE"
        case .temora: return "YTEM"
        case .tibooburra: return "YTIB"
        case .tocumwal: return "YTOC"
        case .tumut: return "YTMU"
        case .waggaWagga: return "YSWG"
        case .walcha: return "YWCH"
        case .walgett: return "YWLG"
        case .westWyalong: return "YWWL"
        case .wilcannia: return "YWCA"
        case .young: return "YYNG"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
