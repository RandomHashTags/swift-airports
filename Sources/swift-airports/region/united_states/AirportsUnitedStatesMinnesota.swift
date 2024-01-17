//
//  AirportsUnitedStatesMinnesota.swift
//
//
//  Created by Evan Anderson on 11/23/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesMinnesota : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Minnesota
    case bemidji
    case brainerd
    case duluth
    case range
    case minneapolisSaintPaul
    case rochester
    case saintCloud
    
    case falls
    case thief
    case crystal
    case flyingCloud
    case saintPaulDowntown
    case albertLea
    case chandlerField
    case austin
    case baudette
    case benson
    case crookston
    case detroitLakes
    case ely
    case evelethVirginia
    case fairmont
    case faribault
    case fergusFalls
    case grandMarais
    case grandRapids
    case jackson
    case mankato
    case southwestMinnesota
    case montevideoChippewa
    case morris
    case newUlm
    case owatonnaDegner
    case parkRapids
    case redwoodFalls
    case roseau
    case warroad
    case windom
    case wonona
    case worthington
    case stanton
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.minnesota
    }
    /*public var citiesServed : [any SovereignStateCity] {
        switch self {
        case .minneapolisSaintPaul: return [CitiesUnitedStatesMinnesota.minneapolis, CitiesUnitedStatesMinnesota.saint_paul]
        default: return []
        }
    }*/
    
    public var faa : String {
        switch self {
        case .bemidji: return "BJI"
        case .brainerd: return "BRD"
        case .duluth: return "DLH"
        case .range: return "HIB"
        case .minneapolisSaintPaul: return "MSP"
        case .rochester: return "RST"
        case .saintCloud: return "STC"
            
        case .falls: return "INL"
        case .thief: return "TVF"
        case .crystal: return "MIC"
        case .flyingCloud: return "FCM"
        case .saintPaulDowntown: return "STP"
        case .albertLea: return "AEL"
        case .chandlerField: return "AXN"
        case .austin: return "AUM"
        case .baudette: return "BDE"
        case .benson: return "BBB"
        case .crookston: return "CKN"
        case .detroitLakes: return "DTL"
        case .ely: return "ELO"
        case .evelethVirginia: return "EVM"
        case .fairmont: return "FRM"
        case .faribault: return "FBL"
        case .fergusFalls: return "FFM"
        case .grandMarais: return "CKC"
        case .grandRapids: return "GPZ"
        case .jackson: return "MJQ"
        case .mankato: return "MKT"
        case .southwestMinnesota: return "MML"
        case .montevideoChippewa: return "MVE"
        case .morris: return "MOX"
        case .newUlm: return "ULM"
        case .owatonnaDegner: return "OWA"
        case .parkRapids: return "PKD"
        case .redwoodFalls: return "RWF"
        case .roseau: return "ROX"
        case .warroad: return "RRT"
        case .windom: return "MWM"
        case .wonona: return "ONA"
        case .worthington: return "OTG"
        case .stanton: return "SYN"
        }
    }
    
    public var iata : String {
        switch self {
        case .ely: return "LYU"
        case .grandMarais: return "GRM"
        default: return faa
        }
    }
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .bemidji: return "https://www.bemidjiairport.org"
        case .brainerd: return "https://brainerdairport.com"
        case .duluth: return "https://duluthairport.com"
        case .range: return "https://www.rangeregionalairport.com"
        case .minneapolisSaintPaul: return "https://www.mspairport.com"
        case .rochester: return "https://flyrst.com"
        case .saintCloud: return "https://stcloudairport.com"
            
        default: return nil // TODO: add
        }
    }
}
