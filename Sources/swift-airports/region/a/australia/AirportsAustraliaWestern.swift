//
//  AirportsAustraliaWestern.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsAustraliaWestern : String, AirportAustralia { // https://en.wikipedia.org/wiki/List_of_airports_in_Australia | https://en.wikipedia.org/wiki/List_of_airports_in_Western_Australia
    case albany
    case argyle
    case balgoHill
    case barimunya
    case barrowIsland
    case bedfordDowns
    case beverleySprings
    case boolgeeda
    case broome
    case bunbury
    case busseltonMargaretRiver
    case caiguna
    case carnarvon
    case christmasCreekStation
    case collie
    case coolawanyahStation
    case coondewanna
    case cue
    case dalgarangaGoldMine
    case curtin
    case derby
    case dongara
    case drysdaleRiver
    case eneabba
    case esperance
    case eucla
    case learmonth
    case fitzroyCrossing
    case floraValley
    case forrest
    case fortescueDaveForrest
    case gascoyneJunction
    case geraldton
    case gibbRiver
    case ginbata
    case gordonDowns
    case hallsCreek
    case hillside
    case highbury
    case jandakot
    case jurienBay
    case kalumburu
    case kalbarri
    case kalgoorlieBoulder
    case kambalda
    case karara
    case solomon
    case karratha
    case katanning
    case kununurra
    case laverton
    case leinster
    case leonora
    case mandoraStation
    case manjimup
    case marbleBar
    case margaretRiver
    case margaretRiverStation
    case meekatharra
    case billiluna
    case mitchellPlateau
    case sharkBay
    case morawa
    case mountHouse
    case mountKeith
    case mountMagnet
    case mullewa
    case mungalaluTruscott
    case murrinMurrin
    case myroodahStation
    case narrogin
    case newman
    case nifty
    case norseman
    case nullagine
    case onslow
    case ordRiver
    case paraburdoo
    case pardooStation
    case perth
    case portHedland
    case bellburn
    case ravensthorpe
    case roebourne
    case rottnestIsland
    case royHillStation
    case sandstone
    case shayGap
    case southernCross
    case tablelandHomestead
    case telfer
    case thedaStation
    case tomPrice
    case uselessLoop
    case wallalDowns
    case turkeyCreek
    case warrawagineStation
    case westAngelas
    case wiluna
    case wittenoom
    case woodieWoodie
    case wyndham
    case yalgoo
    case yeelirrie
    
    public var subdivisionLevel1 : SubdivisionsAustralia {
        return SubdivisionsAustralia.western_australia
    }
    
    public var iata : String {
        switch self {
        case .albany: return "ALH"
        case .argyle: return "GYL"
        case .balgoHill: return "BQW"
        case .barimunya: return "BYP"
        case .barrowIsland: return "BWB"
        case .bedfordDowns: return "BDW"
        case .beverleySprings: return "BVZ"
        case .boolgeeda: return "OCM"
        case .broome: return "BME"
        case .bunbury: return "BUY"
        case .busseltonMargaretRiver: return "BQB"
        case .caiguna: return "CGV"
        case .carnarvon: return "CVQ"
        case .christmasCreekStation: return "CXQ"
        case .collie: return "CIE"
        case .coolawanyahStation: return "COY"
        case .coondewanna: return "CJF"
        case .cue: return "CUY"
        case .dalgarangaGoldMine: return "DGD"
        case .curtin: return "DCN"
        case .derby: return "DRB"
        case .dongara: return "DOX"
        case .drysdaleRiver: return "DRY"
        case .eneabba: return "ENB"
        case .esperance: return "EPR"
        case .eucla: return "EUC"
        case .learmonth: return "LEA"
        case .fitzroyCrossing: return "FIZ"
        case .floraValley: return "FVL"
        case .forrest: return "FOS"
        case .fortescueDaveForrest: return "KFE"
        case .gascoyneJunction: return "GSC"
        case .geraldton: return "GET"
        case .gibbRiver: return "GBV"
        case .ginbata: return "GBW"
        case .gordonDowns: return "GDD"
        case .hallsCreek: return "HCQ"
        case .hillside: return "HLL"
        case .highbury: return "HIG"
        case .jandakot: return "JAD"
        case .jurienBay: return "JUR"
        case .kalumburu: return "UBU"
        case .kalbarri: return "KAX"
        case .kalgoorlieBoulder: return "KGI"
        case .kambalda: return "KDB"
        case .karara: return "KQR"
        case .solomon: return "SLJ"
        case .karratha: return "KTA"
        case .katanning: return "KNI"
        case .kununurra: return "KNX"
        case .laverton: return "LVO"
        case .leinster: return "LER"
        case .leonora: return "LNO"
        case .mandoraStation: return "MQA"
        case .manjimup: return "MJP"
        case .marbleBar: return "MBB"
        case .margaretRiver: return "MQZ"
        case .margaretRiverStation: return "MGV"
        case .meekatharra: return "MKR"
        case .billiluna: return "BIW"
        case .mitchellPlateau: return "MIH"
        case .sharkBay: return "MJK"
        case .morawa: return "MWB"
        case .mountHouse: return "MHO"
        case .mountKeith: return "WME"
        case .mountMagnet: return "MMG"
        case .mullewa: return "MXU"
        case .mungalaluTruscott: return "TTX"
        case .murrinMurrin: return "WUI"
        case .myroodahStation: return "MYO"
        case .narrogin: return "NRG"
        case .newman: return "ZNE"
        case .nifty: return "NIF"
        case .norseman: return "NSM"
        case .nullagine: return "NLL"
        case .onslow: return "ONS"
        case .ordRiver: return "ODR"
        case .paraburdoo: return "PBO"
        case .pardooStation: return "PRD"
        case .perth: return "PER"
        case .portHedland: return "PHE"
        case .bellburn: return "BXF"
        case .ravensthorpe: return "RVT"
        case .roebourne: return "RBU"
        case .rottnestIsland: return "RTS"
        case .royHillStation: return "RHL"
        case .sandstone: return "NDS"
        case .shayGap: return "SGP"
        case .southernCross: return "SQC"
        case .tablelandHomestead: return "TBL"
        case .telfer: return "TEF"
        case .thedaStation: return "TDN"
        case .tomPrice: return "TPR"
        case .uselessLoop: return "USL"
        case .wallalDowns: return "WLA"
        case .turkeyCreek: return "TKY"
        case .warrawagineStation: return "WRW"
        case .westAngelas: return "WLP"
        case .wiluna: return "WUN"
        case .wittenoom: return "WIT"
        case .woodieWoodie: return "WWI"
        case .wyndham: return "WYN"
        case .yalgoo: return "YLG"
        case .yeelirrie: return "KYF"
        }
    }
    
    public var icao : String {
        switch self {
        case .albany: return "YABA"
        case .argyle: return "YARG"
        case .balgoHill: return "YBGO"
        case .barimunya: return "YBRY"
        case .barrowIsland: return "YBWX"
        case .bedfordDowns: return "YBDF"
        case .beverleySprings: return "YBYS"
        case .boolgeeda: return "YBGD"
        case .broome: return "YBRM"
        case .bunbury: return "YBUN"
        case .busseltonMargaretRiver: return "YBLN"
        case .caiguna: return "YCAG"
        case .carnarvon: return "YCAR"
        case .christmasCreekStation: return "YCRK"
        case .collie: return "YCOI"
        case .coolawanyahStation: return "YCWY"
        case .coondewanna: return "YCWA"
        case .cue: return "YCUE"
        case .dalgarangaGoldMine: return "YDGA"
        case .curtin: return "YCIN"
        case .derby: return "YDBY"
        case .dongara: return "YDRA"
        case .drysdaleRiver: return "YDRD"
        case .eneabba: return "YEEB"
        case .esperance: return "YESP"
        case .eucla: return "YECL"
        case .learmonth: return "YPLM"
        case .fitzroyCrossing: return "YFTZ"
        case .floraValley: return "YFLO"
        case .forrest: return "YFRT"
        case .fortescueDaveForrest: return "YFDF"
        case .gascoyneJunction: return "YGSC"
        case .geraldton: return "YGEL"
        case .gibbRiver: return "YGIB"
        case .ginbata: return "YGIA"
        case .gordonDowns: return "YGDN"
        case .hallsCreek: return "YHLC"
        case .hillside: return "YHIL"
        case .highbury: return "YHHY"
        case .jandakot: return "YPJT"
        case .jurienBay: return "YJNB"
        case .kalumburu: return "YKAL"
        case .kalbarri: return "YKBR"
        case .kalgoorlieBoulder: return "YPKG"
        case .kambalda: return "YKBL"
        case .karara: return "YKAR"
        case .solomon: return "YSOL"
        case .karratha: return "YPKA"
        case .katanning: return "YKNG"
        case .kununurra: return "YPKU"
        case .laverton: return "YLTN"
        case .leinster: return "YLST"
        case .leonora: return "YLEO"
        case .mandoraStation: return "YMDI"
        case .manjimup: return "YMJM"
        case .marbleBar: return "YMBL"
        case .margaretRiver: return "YMGT"
        case .margaretRiverStation: return "YMGR"
        case .meekatharra: return "YMEK"
        case .billiluna: return "YBIL"
        case .mitchellPlateau: return "YMIP"
        case .sharkBay: return "YSHK"
        case .morawa: return "YMRW"
        case .mountHouse: return "YMHO"
        case .mountKeith: return "YMNE"
        case .mountMagnet: return "YMOG"
        case .mullewa: return "YMWA"
        case .mungalaluTruscott: return "YTST"
        case .murrinMurrin: return "YMMI"
        case .myroodahStation: return "YMYR"
        case .narrogin: return "YNRG"
        case .newman: return "YNWN"
        case .nifty: return "YCNF"
        case .norseman: return "YNSM"
        case .nullagine: return "YNUL"
        case .onslow: return "YOLW"
        case .ordRiver: return "YORV"
        case .paraburdoo: return "YPBO"
        case .pardooStation: return "YPDO"
        case .perth: return "YPPH"
        case .portHedland: return "YPPD"
        case .bellburn: return "YBEB"
        case .ravensthorpe: return "YNRV"
        case .roebourne: return "YROE"
        case .rottnestIsland: return "YRTI"
        case .royHillStation: return "YRYH"
        case .sandstone: return "YSAN"
        case .shayGap: return "YSHG"
        case .southernCross: return "YSCR"
        case .tablelandHomestead: return "YTAB"
        case .telfer: return "YTEF"
        case .thedaStation: return "YTHD"
        case .tomPrice: return "YTMP"
        case .uselessLoop: return "YUSL"
        case .wallalDowns: return "YWAL"
        case .turkeyCreek: return "YTKY"
        case .warrawagineStation: return "YWWG"
        case .westAngelas: return "YANG"
        case .wiluna: return "YWLU"
        case .wittenoom: return "YWIT"
        case .woodieWoodie: return "YWWI"
        case .wyndham: return "YWYM"
        case .yalgoo: return "YYAL"
        case .yeelirrie: return "YYLR"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
