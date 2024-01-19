//
//  AirportsEstonia.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsEstonia : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Estonia
    public typealias SubdivisionLevel1Type = SubdivisionsEstonia
    
    case kuressaare
    case kardla
    case parnu
    case tallinn
    case tartuUlenurme
    
    public var country: Country {
        return Country.estonia
    }
    
    public var subdivisionLevel1 : SubdivisionsEstonia {
        switch self {
        case .kuressaare:
            return SubdivisionsEstonia.saare
        case .kardla:
            return SubdivisionsEstonia.hiiu
        case .parnu:
            return SubdivisionsEstonia.parnu
        case .tallinn:
            return SubdivisionsEstonia.harju
        case .tartuUlenurme:
            return SubdivisionsEstonia.tartu
        }
    }
    
    public var iata : String {
        switch self {
        case .kuressaare: return "URE"
        case .kardla: return "KDL"
        case .parnu: return "EPU"
        case .tallinn: return "TLL"
        case .tartuUlenurme: return "TAY"
        }
    }
    
    public var icao : String {
        switch self {
        case .kuressaare: return "EEKE"
        case .kardla: return "EEKA"
        case .parnu: return "EEPU"
        case .tallinn: return "EETN"
        case .tartuUlenurme: return "EETU"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
