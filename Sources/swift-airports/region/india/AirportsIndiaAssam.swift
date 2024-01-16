//
//  AirportsIndiaAssam.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsIndiaAssam : String, AirportIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
    case rupsi
    case dibruharh
    case lokpriya
    case jorhat
    case lilabari
    case silchar
    case tezpur
    
    public var subdivisionLevel1 : SubdivisionsIndia {
        return SubdivisionsIndia.assam
    }
    
    public var iata : String {
        switch self {
        case .rupsi: return "RUP"
        case .dibruharh: return "DIB"
        case .lokpriya: return "GAU"
        case .jorhat: return "JRH"
        case .lilabari: return "IXI"
        case .silchar: return "IXS"
        case .tezpur: return "TEZ"
        }
    }
    
    public var icao : String {
        switch self {
        case .rupsi: return "VERU"
        case .dibruharh: return "VEMN"
        case .lokpriya: return "VEGT"
        case .jorhat: return "VEJT"
        case .lilabari: return "VELR"
        case .silchar: return "VEKU"
        case .tezpur: return "VETZ"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
