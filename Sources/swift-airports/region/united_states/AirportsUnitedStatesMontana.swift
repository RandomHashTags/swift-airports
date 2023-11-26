//
//  AirportsUnitedStatesMontana.swift
//
//
//  Created by Evan Anderson on 11/23/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesMontana : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Montana
    case billings_logan
    case bozeman
    case bert_mooney
    case great_falls
    case helena
    case glacier_park
    case missoula
    case yellowstone
    
    public var subdivision_level_1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.montana
    }
    
    public var faa : String {
        switch self {
        case .billings_logan: return "BIL"
        case .bozeman: return "BZN"
        case .bert_mooney: return "BTM"
        case .great_falls: return "GTF"
        case .helena: return "HLN"
        case .glacier_park: return "GPI"
        case .missoula: return "MSO"
        case .yellowstone: return "WYS"
        }
    }
    
    public var iata : String {
        switch self {
        case .glacier_park: return "FCA"
        default: return faa
        }
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var website : String {
        switch self {
        case .billings_logan: return "https://www.flybillings.com"
        case .bozeman: return "https://bozemanairport.com"
        case .bert_mooney: return "https://www.butteairport.com"
        case .great_falls: return "https://flygtf.com"
        case .helena: return "https://helenaairport.com"
        case .glacier_park: return "https://iflyglacier.com"
        case .missoula: return "https://flymissoula.com"
        case .yellowstone: return "https://yellowstoneairport.mdt.mt.gov"
        }
    }
}
