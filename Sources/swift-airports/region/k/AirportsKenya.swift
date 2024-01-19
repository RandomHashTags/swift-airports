//
//  AirportsKenya.swift
//
//
//  Created by Evan Anderson on 1/17/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsKenya : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Kenya
    public typealias SubdivisionLevel1Type = SubdivisionsKenya
    
    case amboseli
    case eldoret
    case eliye
    case garissa
    case hola
    case kakamega
    case kalokol
    case kericho
    case kilaguni
    case kisumu
    case kitale
    case manda
    case lodwar
    case loiyangalani
    case lokichogio
    case malindi
    case mandera
    case marsabit
    case keekorok
    case maraSerena
    case mulikaLodge
    case moi
    case moyale
    case jomoKentatta
    case wilson
    case nakuru
    case nanyuki
    case nyeri
    case samburu
    case ukunda
    case wajir
    
    public var country : Country {
        return Country.kenya
    }
    
    public var subdivisionLevel1 : SubdivisionsKenya {
        switch self {
        case .amboseli: return SubdivisionsKenya.kajiado
        case .eldoret: return SubdivisionsKenya.uasin_gishu
        case .eliye,
                .kalokol,
                .lodwar,
                .lokichogio:
            return SubdivisionsKenya.turkana
        case .garissa: return SubdivisionsKenya.garissa
        case .hola: return SubdivisionsKenya.tana_river
        case .kakamega: return SubdivisionsKenya.kakamega
        case .kericho: return SubdivisionsKenya.kericho
        case .kilaguni: return SubdivisionsKenya.taita_taveta
        case .kisumu: return SubdivisionsKenya.kisumu
        case .kitale: return SubdivisionsKenya.trans_nzoia
        case .manda: return SubdivisionsKenya.lamu
        case .loiyangalani,
                .marsabit,
                .moyale:
            return SubdivisionsKenya.marsabit
        case .malindi: return SubdivisionsKenya.kilifi
        case .mandera: return SubdivisionsKenya.mandera
        case .keekorok,
                .maraSerena:
            return SubdivisionsKenya.narok
        case .mulikaLodge: return SubdivisionsKenya.meru
        case .moi: return SubdivisionsKenya.mombasa
        case .jomoKentatta,
                .wilson:
            return SubdivisionsKenya.nairobi
        case .nakuru: return SubdivisionsKenya.nakuru
        case .nanyuki: return SubdivisionsKenya.laikipia
        case .nyeri: return SubdivisionsKenya.nyeri
        case .samburu: return SubdivisionsKenya.samburu
        case .ukunda: return SubdivisionsKenya.kwale
        case .wajir: return SubdivisionsKenya.wajir
        }
    }
    
    public var iata : String {
        switch self {
        case .amboseli: return "ASV"
        case .eldoret: return "EDL"
        case .eliye: return "EYS"
        case .garissa: return "GAS"
        case .hola: return "HOA"
        case .kakamega: return "GGM"
        case .kalokol: return "KLK"
        case .kericho: return "KEY"
        case .kilaguni: return "ILU"
        case .kisumu: return "KIS"
        case .kitale: return "KTL"
        case .manda: return "LAU"
        case .lodwar: return "LOK"
        case .loiyangalani: return "LOY"
        case .lokichogio: return "LKG"
        case .malindi: return "MYD"
        case .mandera: return "NDE"
        case .marsabit: return "RBT"
        case .keekorok: return "KEU"
        case .maraSerena: return "MRE"
        case .mulikaLodge: return "JJM"
        case .moi: return "MBA"
        case .moyale: return "OYL"
        case .jomoKentatta: return "NBO"
        case .wilson: return "WIL"
        case .nakuru: return "NUU"
        case .nanyuki: return "NYK"
        case .nyeri: return "NYE"
        case .samburu: return "UAS"
        case .ukunda: return "UKA"
        case .wajir: return "WJR"
        }
    }
    
    public var icao : String {
        switch self {
        case .amboseli: return "HKAM"
        case .eldoret: return "HKEL"
        case .eliye: return "HKES"
        case .garissa: return "HKHA"
        case .hola: return "HKHO"
        case .kakamega: return "HKKG"
        case .kalokol: return "HKFG"
        case .kericho: return "HKKR"
        case .kilaguni: return "HKKL"
        case .kisumu: return "HKKI"
        case .kitale: return "HKKT"
        case .manda: return "HKLU"
        case .lodwar: return "HKLO"
        case .loiyangalani: return "HKLY"
        case .lokichogio: return "HKLK"
        case .malindi: return "HKML"
        case .mandera: return "HKMA"
        case .marsabit: return "HKMB"
        case .keekorok: return "HKKE"
        case .maraSerena: return "HKMS"
        case .mulikaLodge: return "HKMK"
        case .moi: return "HKMO"
        case .moyale: return "HKMY"
        case .jomoKentatta: return "HKJK"
        case .wilson: return "HKNW"
        case .nakuru: return "HKNK"
        case .nanyuki: return "HKNL"
        case .nyeri: return "HKNI"
        case .samburu: return "HKSB"
        case .ukunda: return "HKUK"
        case .wajir: return "HKWJ"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
