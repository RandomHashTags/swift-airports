//
//  AirportsUnitedStatesNewYork.swift
//
//
//  Created by Evan Anderson on 11/28/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesNewYork : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_New_York
    case albany
    case greaterBinghamton
    case buffaloNiagara
    case elmira
    case ithacaTompkins
    case johnFKennedy
    case laGuardia
    case longIslandMacArthur
    case stewart
    case niagaraFalls
    case ogdensburg
    case plattsburgh
    case frederickDouglass
    case syracuseHancock
    case watertown
    case westchester
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.new_york
    }
    
    public var faa : String {
        switch self {
        case .albany: return "ALB"
        case .greaterBinghamton: return "BGM"
        case .buffaloNiagara: return "BUF"
        case .elmira: return "ELM"
        case .ithacaTompkins: return "ITH"
        case .johnFKennedy: return "JFK"
        case .laGuardia: return "LGA"
        case .longIslandMacArthur: return "ISP"
        case .stewart: return "SWF"
        case .niagaraFalls: return "IAG"
        case .ogdensburg: return "OGS"
        case .plattsburgh: return "PBG"
        case .frederickDouglass: return "ROC"
        case .syracuseHancock: return "SYR"
        case .watertown: return "ART"
        case .westchester: return "HPN"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String? {
        switch self {
        case .albany: return "https://www.albanyairport.com"
        case .greaterBinghamton: return "https://binghamtonairport.com"
        case .buffaloNiagara: return "https://www.buffaloairport.com"
        case .elmira: return "https://flyelm.com"
        case .ithacaTompkins: return "https://flyithaca.com"
        case .johnFKennedy: return "https://www.jfkairport.com"
        case .laGuardia: return "https://laguardiaairport.com"
        case .longIslandMacArthur: return "https://macarthurairport.com"
        case .stewart: return "https://www.swfny.com"
        case .niagaraFalls: return "https://www.niagarafallsairport.com"
        case .ogdensburg: return "https://www.ogsair.com"
        case .plattsburgh: return "https://www.flyplattsburgh.com"
        case .frederickDouglass: return "https://rocairport.com"
        case .syracuseHancock: return "https://syrairport.org"
        case .watertown: return "https://www.watertownairport.com"
        case .westchester: return "https://airport.westchestergov.com"
        }
    }
}
