//
//  AirportsBelarus.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsBelarus : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Belarus
    public typealias SubdivisionLevel1Type = SubdivisionsBelarus
    
    case brest
    case gomel
    case grodno
    case minsk
    case mogilev
    case vitebskVostochny
    
    public var country : Country {
        return Country.belarus
    }
    
    public var subdivisionLevel1 : SubdivisionsBelarus {
        switch self {
        case .brest:
            return SubdivisionsBelarus.brest
        case .gomel:
            return SubdivisionsBelarus.gomel
        case .grodno:
            return SubdivisionsBelarus.grodno
        case .minsk:
            return SubdivisionsBelarus.minsk
        case .mogilev:
            return SubdivisionsBelarus.mogilev
        case .vitebskVostochny:
            return SubdivisionsBelarus.vitebsk
        }
    }
    
    public var iata : String {
        switch self {
        case .brest: return "BQT"
        case .gomel: return "GME"
        case .grodno: return "GNA"
        case .minsk: return "MSQ"
        case .mogilev: return "MVQ"
        case .vitebskVostochny: return "VTB"
        }
    }
    
    public var icao : String {
        switch self {
        case .brest: return "UMBB"
        case .gomel: return "UMGG"
        case .grodno: return "UMMG"
        case .minsk: return "UMMS"
        case .mogilev: return "UMOO"
        case .vitebskVostochny: return "UMII"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
