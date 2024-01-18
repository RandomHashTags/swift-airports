//
//  AirportsMalaysia.swift
//
//
//  Created by Evan Anderson on 1/18/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsMalaysia : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Malaysia
    public typealias SubdivisionLevel1Type = SubdivisionsMalaysia
    
    case sultanAbdulHalim
    case rmafButterworth
    case penang
    case sultanAzlanShah
    case kerteh
    case sultanIsmailPetra
    case sultanMahmud
    case sultanHajiAhmadShah
    case langkawi
    case malacca
    case mersing
    case pangkor
    case redang
    case senai
    case kualaLumpur
    case sitiawan
    case sultanAbdulAzizShah
    case taiping
    case tioman
    case bakelalan
    case bario
    case belaga
    case bintulu
    case kapit
    case keningau
    case kotaKinabalu
    case kuching
    case kudat
    case labuan
    case lahadDatu
    case lawas
    case limbang
    case longAkah
    case longLellang
    case longPasia
    case longSemado
    case longSeridan
    case longSukang
    case marudi
    case miri
    case mukah
    case mulu
    case hutanBakauPamol
    case ranau
    case sahabat
    case sandakan
    case sematan
    case semporna
    case sepulot
    case sibu
    case simanggang
    case tawau
    case tommanggong
    
    public var country : Country {
        return Country.malaysia
    }
    
    public var subdivisionLevel1 : SubdivisionsMalaysia {
        switch self {
        case .sultanAbdulHalim,
                .langkawi:
            return SubdivisionsMalaysia.kedah
        case .rmafButterworth,
                .penang:
            return SubdivisionsMalaysia.penang
        case .sultanAzlanShah,
                .pangkor,
                .sitiawan,
                .taiping:
            return SubdivisionsMalaysia.perak
        case .kerteh,
                .sultanMahmud,
                .redang:
            return SubdivisionsMalaysia.terengganu
        case .sultanIsmailPetra:
            return SubdivisionsMalaysia.kelantan
        case .sultanHajiAhmadShah,
                .tioman:
            return SubdivisionsMalaysia.pahang
        case .malacca:
            return SubdivisionsMalaysia.malacca
        case .mersing,
                .senai:
            return SubdivisionsMalaysia.johor
        case .kualaLumpur,
                .sultanAbdulAzizShah:
            return SubdivisionsMalaysia.selangor
        case .bakelalan,
                .bario,
                .belaga,
                .bintulu,
                .kapit,
                .kuching,
                .lawas,
                .limbang,
                .longAkah,
                .longLellang,
                .longSemado,
                .longSeridan,
                .longSukang,
                .marudi,
                .miri,
                .mukah,
                .mulu,
                .sematan,
                .sibu,
                .simanggang:
            return SubdivisionsMalaysia.sarawak
        case .keningau,
                .kotaKinabalu,
                .kudat,
                .lahadDatu,
                .longPasia,
                .hutanBakauPamol,
                .ranau,
                .sahabat,
                .sandakan,
                .semporna,
                .sepulot,
                .tawau,
                .tommanggong:
            return SubdivisionsMalaysia.sabah
        case .labuan:
            return SubdivisionsMalaysia.labuan
        }
    }
    
    public var iata : String {
        switch self {
        case .sultanAbdulHalim: return "AOR"
        case .rmafButterworth: return "BWH"
        case .penang: return "PEN"
        case .sultanAzlanShah: return "IPH"
        case .kerteh: return "KTE"
        case .sultanIsmailPetra: return "KBR"
        case .sultanMahmud: return "TGG"
        case .sultanHajiAhmadShah: return "KUA"
        case .langkawi: return "LGK"
        case .malacca: return "MKZ"
        case .mersing: return "MEP"
        case .pangkor: return "PKG"
        case .redang: return "RDN"
        case .senai: return "JHB"
        case .kualaLumpur: return "KUL"
        case .sitiawan: return "SWY"
        case .sultanAbdulAzizShah: return "SZB"
        case .taiping: return "TPG"
        case .tioman: return "TOD"
        case .bakelalan: return "BKM"
        case .bario: return "BBN"
        case .belaga: return "BLG"
        case .bintulu: return "BTU"
        case .kapit: return "KPI"
        case .keningau: return "KGU"
        case .kotaKinabalu: return "BKI"
        case .kuching: return "KCH"
        case .kudat: return "KUD"
        case .labuan: return "LBU"
        case .lahadDatu: return "LDU"
        case .lawas: return "LWY"
        case .limbang: return "LMN"
        case .longAkah: return "LKH"
        case .longLellang: return "LGL"
        case .longPasia: return "GSA"
        case .longSemado: return "LSM"
        case .longSeridan: return "ODN"
        case .longSukang: return "LSU"
        case .marudi: return "MUR"
        case .miri: return "MYY"
        case .mukah: return "MKM"
        case .mulu: return "MZV"
        case .hutanBakauPamol: return "PAY"
        case .ranau: return "RNU"
        case .sahabat: return "SXS"
        case .sandakan: return "SDK"
        case .sematan: return "BSE"
        case .semporna: return "SMM"
        case .sepulot: return "SPE"
        case .sibu: return "SBW"
        case .simanggang: return "SGG"
        case .tawau: return "TWU"
        case .tommanggong: return "TMG"
        }
    }
    
    public var icao : String {
        switch self {
        case .sultanAbdulHalim: return "WMKA"
        case .rmafButterworth: return "WMKB"
        case .penang: return "WMKP"
        case .sultanAzlanShah: return "WMKI"
        case .kerteh: return "WMKE"
        case .sultanIsmailPetra: return "WMKC"
        case .sultanMahmud: return "WMKN"
        case .sultanHajiAhmadShah: return "WMKD"
        case .langkawi: return "WMKL"
        case .malacca: return "WMKM"
        case .mersing: return "WMAU"
        case .pangkor: return "WMPA"
        case .redang: return "WMPR"
        case .senai: return "WMKJ"
        case .kualaLumpur: return "WMKK"
        case .sitiawan: return "WMBA"
        case .sultanAbdulAzizShah: return "WMSA"
        case .taiping: return "WMBI"
        case .tioman: return "WMBT"
        case .bakelalan: return "WBGQ"
        case .bario: return "WBGZ"
        case .belaga: return "WBGC"
        case .bintulu: return "WBGB"
        case .kapit: return "WBGP"
        case .keningau: return "WBKG"
        case .kotaKinabalu: return "WBKK"
        case .kuching: return "WBGG"
        case .kudat: return "WBKT"
        case .labuan: return "WBKL"
        case .lahadDatu: return "WBKD"
        case .lawas: return "WBGW"
        case .limbang: return "WBGJ"
        case .longAkah: return "WBGL"
        case .longLellang: return "WBGF"
        case .longPasia: return "WBKN"
        case .longSemado: return "WBGD"
        case .longSeridan: return "WBGI"
        case .longSukang: return "WBGU"
        case .marudi: return "WBGM"
        case .miri: return "WBGR"
        case .mukah: return "WBGK"
        case .mulu: return "WBMU"
        case .hutanBakauPamol: return "WBKP"
        case .ranau: return "WBKR"
        case .sahabat: return "WBKH"
        case .sandakan: return "WBKS"
        case .sematan: return "WBGN"
        case .semporna: return "WBKA"
        case .sepulot: return "WBKO"
        case .sibu: return "WBGS"
        case .simanggang: return "WBGY"
        case .tawau: return "WBKW"
        case .tommanggong: return "WBKM"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
