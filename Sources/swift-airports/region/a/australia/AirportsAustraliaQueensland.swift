//
//  AirportsAustraliaQueensland.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsAustraliaQueensland : String, AirportAustralia { // https://en.wikipedia.org/wiki/List_of_airports_in_Australia | https://en.wikipedia.org/wiki/List_of_airports_in_Queensland
    case abingdonDowns
    case alpha
    case aramac
    case arrabury
    case augustusDowns
    case aurukun
    case ayr
    case baduIsland
    case ballera
    case northernPeninsula
    case barcaldine
    case bedourie
    case betoota
    case birdsville
    case blackall
    case blackwater
    case boiguIsland
    case bollon
    case bolwarra
    case boulia
    case bowen
    case bramptonIsland
    case brisbane
    case bulimba
    case bundaberg
    case burketown
    case canobie
    case cairns
    case caloundra
    case camooweal
    case charleville
    case chartersTowers
    case chillagoe
    case chinchilla
    case clermont
    case cloncurry
    case cluny
    case coconutIsland
    case coen
    case collinsville
    case cooinda
    case cooktown
    case croydon
    case cunnamulla
    case dalby
    case darnleyIsland
    case davenportDowns
    case deltaDowns
    case dirranbandi
    case dixie
    case doomadgee
    case dorunda
    case drumduff
    case dunbar
    case dunkIsland
    case durhamDowns
    case durrie
    case dysart
    case einasleigh
    case elroseMine
    case emerald
    case orchidBeach
    case gamboola
    case georgetown
    case gladstone
    case gayndah
    case glengyle
    case glenormiston
    case goldCoast
    case goondiwindi
    case greatKeppelIsland
    case greenvale
    case gregoryDowns
    case gympie
    case greatBarrierReef
    case headingly
    case heathlands
    case herveyBay
    case hornIsland
    case hughenden
    case iffley
    case ingham
    case injune
    case inkerman
    case innisfail
    case isisford
    case juliaCreek
    case jundah
    case kalpowar
    case kamileroi
    case karumba
    case kingaroy
    case koolatah
    case koolburra
    case kowanyama
    case kubin
    case lakefield
    case lakelandDowns
    case laura
    case lawnHill
    case lindemanIsland
    case lizardIsland
    case lockhartRiver
    case longreach
    case lorraine
    case lotusValeStation
    case lyndhurstStation
    case mabuiagIsland
    case mackay
    case mareeba
    case marionDowns
    case sunshineCoast
    case maryborough
    case merluna
    case middlemount
    case miles
    case mitchell
    case monkira
    case monto
    case mooraberree
    case moranbah
    case moreton
    case morney
    case morningtonIsland
    case mountGordon
    case mountIsa
    case murrayIsland
    case musgrave
    case muttaburra
    case nappaMerrie
    case newLaura
    case noosa
    case normanton
    case osborneMine
    case palmIsland
    case theMonument
    case edwardRiver
    case whitsundayCoast
    case quilpie
    case richmond
    case robinhood
    case rockhampton
    case roma
    case rutlandPlains
    case saibaiIsland
    case southGalway
    case southport
    case springCreek
    case springvale
    case stGeorge
    case stanthorpe
    case strathmore
    case warraberIsland
    case tangalooma
    case tara
    case taroom
    case thangool
    case thargomindah
    case theodore
    case toowoombaCity
    case toowoombaWellcamp
    case townsville
    case trepell
    case undara
    case vanrook
    case warwick
    case weipa
    case windorah
    case winton
    case whitsundayShuteHarbour
    case wondai
    case wondoola
    case wrothamPark
    case yamIsland
    case yorkeIsland
    
    public var subdivisionLevel1 : SubdivisionsAustralia {
        return SubdivisionsAustralia.queensland
    }
    
    public var iata : String {
        switch self {
        case .abingdonDowns: return "ABG"
        case .alpha: return "ABH"
        case .aramac: return "AXC"
        case .arrabury: return "AAB"
        case .augustusDowns: return "AUD"
        case .aurukun: return "AUU"
        case .ayr: return "AYR"
        case .baduIsland: return "BDD"
        case .ballera: return "BBL"
        case .northernPeninsula: return "ABM"
        case .barcaldine: return "BCI"
        case .bedourie: return "BEU"
        case .betoota: return "BTX"
        case .birdsville: return "BVI"
        case .blackall: return "BKQ"
        case .blackwater: return "BLT"
        case .boiguIsland: return "GIC"
        case .bollon: return "BLS"
        case .bolwarra: return "BCK"
        case .boulia: return "BQL"
        case .bowen: return "ZBO"
        case .bramptonIsland: return "BMP"
        case .brisbane: return "BNE"
        case .bulimba: return "BIP"
        case .bundaberg: return "BDB"
        case .burketown: return "BUC"
        case .canobie: return "CBY"
        case .cairns: return "CNS"
        case .caloundra: return "CUD"
        case .camooweal: return "CML"
        case .charleville: return "CTL"
        case .chartersTowers: return "CXT"
        case .chillagoe: return "LLG"
        case .chinchilla: return "CCL"
        case .clermont: return "CMQ"
        case .cloncurry: return "CNJ"
        case .cluny: return "CZY"
        case .coconutIsland: return "CNC"
        case .coen: return "CUQ"
        case .collinsville: return "KCE"
        case .cooinda: return "CDA"
        case .cooktown: return "CTN"
        case .croydon: return "CDQ"
        case .cunnamulla: return "CMA"
        case .dalby: return "DBY"
        case .darnleyIsland: return "NLF"
        case .davenportDowns: return "DVP"
        case .deltaDowns: return "DDN"
        case .dirranbandi: return "DRN"
        case .dixie: return "DXD"
        case .doomadgee: return "DMD"
        case .dorunda: return "DRD"
        case .drumduff: return "DFP"
        case .dunbar: return "DNB"
        case .dunkIsland: return "DKI"
        case .durhamDowns: return "DHD"
        case .durrie: return "DRR"
        case .dysart: return "DYA"
        case .einasleigh: return "EIH"
        case .elroseMine: return "ERQ"
        case .emerald: return "EMD"
        case .orchidBeach: return "OKB"
        case .gamboola: return "GBP"
        case .georgetown: return "GTT"
        case .gladstone: return "GLT"
        case .gayndah: return "GAH"
        case .glengyle: return "GLG"
        case .glenormiston: return "GLM"
        case .goldCoast: return "OOL"
        case .goondiwindi: return "GOO"
        case .greatKeppelIsland: return "GKL"
        case .greenvale: return "GVP"
        case .gregoryDowns: return "GGD"
        case .gympie: return "GYP"
        case .greatBarrierReef: return "HTI"
        case .headingly: return "HIP"
        case .heathlands: return "HAT"
        case .herveyBay: return "HVB"
        case .hornIsland: return "HID"
        case .hughenden: return "HGD"
        case .iffley: return "IFF"
        case .ingham: return "IGH"
        case .injune: return "INJ"
        case .inkerman: return "IKP"
        case .innisfail: return "IFL"
        case .isisford: return "ISI"
        case .juliaCreek: return "JCK"
        case .jundah: return "JUN"
        case .kalpowar: return "KPP"
        case .kamileroi: return "KML"
        case .karumba: return "KRB"
        case .kingaroy: return "KGY"
        case .koolatah: return "KOH"
        case .koolburra: return "KKP"
        case .kowanyama: return "KWM"
        case .kubin: return "KUG"
        case .lakefield: return "LFP"
        case .lakelandDowns: return "LKD"
        case .laura: return "LUU"
        case .lawnHill: return "LWH"
        case .lindemanIsland: return "LDC"
        case .lizardIsland: return "LZR"
        case .lockhartRiver: return "IRG"
        case .longreach: return "LRE"
        case .lorraine: return "LOA"
        case .lotusValeStation: return "LTV"
        case .lyndhurstStation: return "LTP"
        case .mabuiagIsland: return "UBB"
        case .mackay: return "MKY"
        case .mareeba: return "MRG"
        case .marionDowns: return "MXD"
        case .sunshineCoast: return "MCY"
        case .maryborough: return "MBH"
        case .merluna: return "MLV"
        case .middlemount: return "MMM"
        case .miles: return "WLE"
        case .mitchell: return "MTQ"
        case .monkira: return "ONR"
        case .monto: return "MNQ"
        case .mooraberree: return "OOR"
        case .moranbah: return "MOV"
        case .moreton: return "MET"
        case .morney: return "OXY"
        case .morningtonIsland: return "ONG"
        case .mountGordon: return "GPD"
        case .mountIsa: return "ISA"
        case .murrayIsland: return "MYI"
        case .musgrave: return "MVU"
        case .muttaburra: return "UTB"
        case .nappaMerrie: return "NMR"
        case .newLaura: return "LUT"
        case .noosa: return "NSV"
        case .normanton: return "NTN"
        case .osborneMine: return "OSO"
        case .palmIsland: return "PMK"
        case .theMonument: return "PHQ"
        case .edwardRiver: return "EDR"
        case .whitsundayCoast: return "PPP"
        case .quilpie: return "ULP"
        case .richmond: return "RCM"
        case .robinhood: return "ROH"
        case .rockhampton: return "ROK"
        case .roma: return "RMA"
        case .rutlandPlains: return "RTP"
        case .saibaiIsland: return "SBR"
        case .southGalway: return "ZGL"
        case .southport: return "SHQ"
        case .springCreek: return "SCG"
        case .springvale: return "KSV"
        case .stGeorge: return "SGO"
        case .stanthorpe: return "SNH"
        case .strathmore: return "STH"
        case .warraberIsland: return "SYU"
        case .tangalooma: return "TAN"
        case .tara: return "XTR"
        case .taroom: return "XTO"
        case .thangool: return "THG"
        case .thargomindah: return "XTG"
        case .theodore: return "TDR"
        case .toowoombaCity: return "TWB"
        case .toowoombaWellcamp: return "WTB"
        case .townsville: return "TSV"
        case .trepell: return "TQP"
        case .undara: return "UDA"
        case .vanrook: return "VNR"
        case .warwick: return "WAZ"
        case .weipa: return "WEI"
        case .windorah: return "WNR"
        case .winton: return "WIN"
        case .whitsundayShuteHarbour: return "WSY"
        case .wondai: return "WDI"
        case .wondoola: return "WON"
        case .wrothamPark: return "WPK"
        case .yamIsland: return "XMY"
        case .yorkeIsland: return "OKR"
        }
    }
    
    public var icao : String {
        switch self {
        case .abingdonDowns: return "YABI"
        case .alpha: return "YAPH"
        case .aramac: return "YAMC"
        case .arrabury: return "YARY"
        case .augustusDowns: return "YAGD"
        case .aurukun: return "YAUR"
        case .ayr: return "YAYR"
        case .baduIsland: return "YBAU"
        case .ballera: return "YLLE"
        case .northernPeninsula: return "YNPE"
        case .barcaldine: return "YBAR"
        case .bedourie: return "YBIE"
        case .betoota: return "YBEO"
        case .birdsville: return "YBDV"
        case .blackall: return "YBCK"
        case .blackwater: return "YBTR"
        case .boiguIsland: return "YBOI"
        case .bollon: return "YBLL"
        case .bolwarra: return "YBWR"
        case .boulia: return "YBOU"
        case .bowen: return "YBWN"
        case .bramptonIsland: return "YBPI"
        case .brisbane: return "YBBN"
        case .bulimba: return "YBWM"
        case .bundaberg: return "YBUD"
        case .burketown: return "YBKT"
        case .canobie: return "YCBE"
        case .cairns: return "YBCS"
        case .caloundra: return "YCDR"
        case .camooweal: return "YCMW"
        case .charleville: return "YBCV"
        case .chartersTowers: return "YCHT"
        case .chillagoe: return "YCGO"
        case .chinchilla: return "YCCA"
        case .clermont: return "YCMT"
        case .cloncurry: return "YCCY"
        case .cluny: return "YUNY"
        case .coconutIsland: return "YCCT"
        case .coen: return "YCOE"
        case .collinsville: return "YCSV"
        case .cooinda: return "YCOO"
        case .cooktown: return "YCKN"
        case .croydon: return "YCRY"
        case .cunnamulla: return "YCMU"
        case .dalby: return "YDAY"
        case .darnleyIsland: return "YDNI"
        case .davenportDowns: return "YDPD"
        case .deltaDowns: return "YDLT"
        case .dirranbandi: return "YDBI"
        case .dixie: return "YDIX"
        case .doomadgee: return "YDMG"
        case .dorunda: return "YDOR"
        case .drumduff: return "YDDF"
        case .dunbar: return "YDBR"
        case .dunkIsland: return "YDKI"
        case .durhamDowns: return "YDRH"
        case .durrie: return "YDRI"
        case .dysart: return "YDYS"
        case .einasleigh: return "YEIN"
        case .elroseMine: return "YESE"
        case .emerald: return "YEML"
        case .orchidBeach: return "YORC"
        case .gamboola: return "YGAM"
        case .georgetown: return "YGTN"
        case .gladstone: return "YGLA"
        case .gayndah: return "YGAY"
        case .glengyle: return "YGLE"
        case .glenormiston: return "YGLO"
        case .goldCoast: return "YBCG"
        case .goondiwindi: return "YGDI"
        case .greatKeppelIsland: return "YGKL"
        case .greenvale: return "YGNV"
        case .gregoryDowns: return "YGDS"
        case .gympie: return "YGYM"
        case .greatBarrierReef: return "YBHM"
        case .headingly: return "YHDY"
        case .heathlands: return "YHTL"
        case .herveyBay: return "YHBA"
        case .hornIsland: return "YHID"
        case .hughenden: return "YHUG"
        case .iffley: return "YIFY"
        case .ingham: return "YIGM"
        case .injune: return "YINJ"
        case .inkerman: return "YIKM"
        case .innisfail: return "YIFL"
        case .isisford: return "YISF"
        case .juliaCreek: return "YJLC"
        case .jundah: return "YJDA"
        case .kalpowar: return "YKPR"
        case .kamileroi: return "YKML"
        case .karumba: return "YKMB"
        case .kingaroy: return "YKRY"
        case .koolatah: return "YKLA"
        case .koolburra: return "YKLB"
        case .kowanyama: return "YKOW"
        case .kubin: return "YKUB"
        case .lakefield: return "YLFD"
        case .lakelandDowns: return "YLND"
        case .laura: return "YLRA"
        case .lawnHill: return "YLAH"
        case .lindemanIsland: return "YLIN"
        case .lizardIsland: return "YLZI"
        case .lockhartRiver: return "YLHR"
        case .longreach: return "YLRE"
        case .lorraine: return "YLOR"
        case .lotusValeStation: return "YLOV"
        case .lyndhurstStation: return "YLHS"
        case .mabuiagIsland: return "YMAA"
        case .mackay: return "YBMK"
        case .mareeba: return "YMBA"
        case .marionDowns: return "YMWX"
        case .sunshineCoast: return "YBSU"
        case .maryborough: return "YMYB"
        case .merluna: return "YMEU"
        case .middlemount: return "YMMU"
        case .miles: return "YMLS"
        case .mitchell: return "YMIT"
        case .monkira: return "YMNK"
        case .monto: return "YMTO"
        case .mooraberree: return "YMOO"
        case .moranbah: return "YMRB"
        case .moreton: return "YMOT"
        case .morney: return "YMNY"
        case .morningtonIsland: return "YMTI"
        case .mountGordon: return "YGON"
        case .mountIsa: return "YBMA"
        case .murrayIsland: return "YMUI"
        case .musgrave: return "YMGV"
        case .muttaburra: return "YMTB"
        case .nappaMerrie: return "YNAP"
        case .newLaura: return "YLRS"
        case .noosa: return "YNSH"
        case .normanton: return "YNTN"
        case .osborneMine: return "YOSB"
        case .palmIsland: return "YPAM"
        case .theMonument: return "YTMO"
        case .edwardRiver: return "YPMP"
        case .whitsundayCoast: return "YBPN"
        case .quilpie: return "YQLP"
        case .richmond: return "YRMD"
        case .robinhood: return "YROB"
        case .rockhampton: return "YBRK"
        case .roma: return "YROM"
        case .rutlandPlains: return "YRTP"
        case .saibaiIsland: return "YSII"
        case .southGalway: return "YSGW"
        case .southport: return "YSPT"
        case .springCreek: return "YSPK"
        case .springvale: return "YSPV"
        case .stGeorge: return "YSGE"
        case .stanthorpe: return "YSPE"
        case .strathmore: return "YSMR"
        case .warraberIsland: return "YWBS"
        case .tangalooma: return "YTGA"
        case .tara: return "YTAA"
        case .taroom: return "YTAM"
        case .thangool: return "YTNG"
        case .thargomindah: return "YTGM"
        case .theodore: return "YTDR"
        case .toowoombaCity: return "YTWB"
        case .toowoombaWellcamp: return "YBWW"
        case .townsville: return "YBTL"
        case .trepell: return "YTEE"
        case .undara: return "YUDA"
        case .vanrook: return "YVRS"
        case .warwick: return "YWCK"
        case .weipa: return "YBWP"
        case .windorah: return "YWDH"
        case .winton: return "YWTN"
        case .whitsundayShuteHarbour: return "YSHR"
        case .wondai: return "YWND"
        case .wondoola: return "YWDL"
        case .wrothamPark: return "YWMP"
        case .yamIsland: return "YYMI"
        case .yorkeIsland: return "YYKI"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
