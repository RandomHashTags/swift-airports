//
//  AirportsUnitedStatesTexas.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesTexas : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Texas
    case abilene
    case rickHusbandAmarillo
    case austin
    case jackBrooks
    case brownsville
    case easterwood
    case corpusChristi
    case dallasLove
    case dallasFortWorth
    case delRio
    case elPaso
    case valley
    case georgeBush
    case williamHobby
    case killeen
    case laredo
    case east
    case lubbockPrestonSmith
    case mcAllen
    case midland
    case sanAngelo
    case sanAntonio
    case tylerPounds
    case waco
    case wichitaFalls
    
    public var subdivisionLevel1:  SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.texas
    }
    
    public var faa : String {
        switch self {
        case .abilene: return "ABI"
        case .rickHusbandAmarillo: return "AMA"
        case .austin: return "AUS"
        case .jackBrooks: return "BPT"
        case .brownsville: return "BRO"
        case .easterwood: return "CLL"
        case .corpusChristi: return "CRP"
        case .dallasLove: return "DAL"
        case .dallasFortWorth: return "DFW"
        case .delRio: return "DRT"
        case .elPaso: return "ELP"
        case .valley: return "HRL"
        case .georgeBush: return "IAH"
        case .williamHobby: return "HOU"
        case .killeen: return "GRK"
        case .laredo: return "LRD"
        case .east: return "GGG"
        case .lubbockPrestonSmith: return "LBB"
        case .mcAllen: return "MFE"
        case .midland: return "MAF"
        case .sanAngelo: return "SJT"
        case .sanAntonio: return "SAT"
        case .tylerPounds: return "TYR"
        case .waco: return "ACT"
        case .wichitaFalls: return "SPS"
        }
    }
    
    public var iata: String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String? {
        switch self {
        case .abilene: return "https://iflyabi.com"
        case .rickHusbandAmarillo: return "https://www.fly-ama.com"
        case .austin: return "https://www.austintexas.gov/airport"
        case .jackBrooks: return "https://flysetx.com"
        case .brownsville: return "https://flybrownsville.com"
        case .easterwood: return nil
        case .corpusChristi: return "https://corpuschristiairport.com"
        case .dallasLove: return "https://www.dallas-lovefield.com"
        case .dallasFortWorth: return "https://www.dfwairport.com"
        case .delRio: return "https://www.flydrt.com"
        case .elPaso: return "https://elpasointernationalairport.com"
        case .valley: return "https://flythevalley.com"
        case .georgeBush: return "https://fly2houston.com/iah/overview"
        case .williamHobby: return "https://fly2houston.com/hou/overview"
        case .killeen: return "https://flygrk.com"
        case .laredo: return "https://www.cityoflaredo.com/Airport/"
        case .east: return "https://flyggg.com"
        case .lubbockPrestonSmith: return "https://ci.lubbock.tx.us/departments/airport"
        case .mcAllen: return "https://www.mcallenairport.com"
        case .midland: return "https://www.flymaf.com"
        case .sanAngelo: return nil
        case .sanAntonio: return "https://flysanantonio.com"
        case .tylerPounds: return "https://www.cityoftyler.org/government/departments/airport"
        case .waco: return "https://www.waco-texas.com/Departments/Airport"
        case .wichitaFalls: return "https://flywichitafalls.net"
        }
    }
}
