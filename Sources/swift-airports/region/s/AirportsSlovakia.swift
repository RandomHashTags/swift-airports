//
//  AirportsSlovakia.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsSlovakia : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Slovakia
    public typealias SubdivisionLevel1Type = SubdivisionsSlovakia
    
    case mrStefanik
    case kosice
    case bolkovce
    case piestany
    case popradTatry
    case zilina
    case presov
    case sliac
    
    public var country : Country {
        return Country.slovakia
    }
    
    public var subdivisionLevel1 : SubdivisionsSlovakia {
        switch self {
        case .mrStefanik:
            return SubdivisionsSlovakia.bratislava
        case .kosice:
            return SubdivisionsSlovakia.kosice
        case .bolkovce,
                .sliac:
            return SubdivisionsSlovakia.banska_bystrica
        case .piestany:
            return SubdivisionsSlovakia.trnava
        case .popradTatry,
                .presov:
            return SubdivisionsSlovakia.presov
        case .zilina:
            return SubdivisionsSlovakia.zilina
        }
    }
    
    public var iata : String {
        switch self {
        case .mrStefanik: return "BTS"
        case .kosice: return "KSC"
        case .bolkovce: return "LUE"
        case .piestany: return "PZY"
        case .popradTatry: return "TAT"
        case .zilina: return "ILZ"
        case .presov: return "POV"
        case .sliac: return "SLD"
        }
    }
    
    public var icao : String {
        switch self {
        case .mrStefanik: return "LZIB"
        case .kosice: return "LZKZ"
        case .bolkovce: return "LZLU"
        case .piestany: return "LZPP"
        case .popradTatry: return "LZTT"
        case .zilina: return "LZZI"
        case .presov: return "LZPW"
        case .sliac: return "LZSL"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
