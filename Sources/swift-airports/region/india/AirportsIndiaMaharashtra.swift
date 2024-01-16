//
//  AirportsIndiaMaharashtra.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaMaharashtra : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case akola
    case aurangabad
    case gondia
    case jalgaon
    case kolhapur
    case latur
    case chhatrapatiShivajiMaharaj
    case drBabasahebAmbedkar
    case shriGuruGobindSinghJi
    case nashik
    case osmanabad
    case pune
    case shirdi
    case solapur
    case sindhudurg
    case santGadgeBabaYavatmal
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.maharashtra
    }
    
    public var iata : String {
        switch self {
        case .akola: return "AKD"
        case .aurangabad: return "IXU"
        case .gondia: return "GDB"
        case .jalgaon: return "JLG"
        case .kolhapur: return "KJH"
        case .latur: return "LTU"
        case .chhatrapatiShivajiMaharaj: return "BOM"
        case .drBabasahebAmbedkar: return "NAG"
        case .shriGuruGobindSinghJi: return "NDC"
        case .nashik: return "ISK"
        case .osmanabad: return "OMN"
        case .pune: return "PNQ"
        case .shirdi: return "SAG"
        case .solapur: return "SSE"
        case .sindhudurg: return "SDW"
        case .santGadgeBabaYavatmal: return "YTL"
        }
    }
    
    public var icao : String {
        switch self {
        case .akola: return "VAAK"
        case .aurangabad: return "VAAU"
        case .gondia: return "VAGD"
        case .jalgaon: return "VAJL"
        case .kolhapur: return "VAKP"
        case .latur: return "VOLT"
        case .chhatrapatiShivajiMaharaj: return "VABB"
        case .drBabasahebAmbedkar: return "VANP"
        case .shriGuruGobindSinghJi: return "VAND"
        case .nashik: return "VAOZ"
        case .osmanabad: return "IN-0375"
        case .pune: return "VAPO"
        case .shirdi: return "VASD"
        case .solapur: return "VASL"
        case .sindhudurg: return "VOSR"
        case .santGadgeBabaYavatmal: return "VA78"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
