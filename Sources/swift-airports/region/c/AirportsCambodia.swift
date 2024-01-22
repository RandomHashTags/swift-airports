//
//  AirportsCambodia.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsCambodia : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Cambodia
    public typealias SubdivisionLevel1Type = SubdivisionsCambodia
    
    case ratanakiri
    case battambang
    case kampongCham
    case kampongChhnang
    case kohKong
    case krakor
    case kratie
    case phnomPenh
    case mondulkiri
    case siemReapAngkor
    case sihanouk
    case stungTreng
    
    public var country : Country {
        return Country.cambodia
    }
    
    public var subdivisionLevel1 : SubdivisionsCambodia {
        switch self {
        case .ratanakiri:
            return SubdivisionsCambodia.ratanakiri
        case .battambang:
            return SubdivisionsCambodia.battambang
        case .kampongCham:
            return SubdivisionsCambodia.kampong_cham
        case .kampongChhnang:
            return SubdivisionsCambodia.kampong_chhnang
        case .kohKong:
            return SubdivisionsCambodia.koh_kong
        case .krakor:
            return SubdivisionsCambodia.pursat
        case .kratie:
            return SubdivisionsCambodia.kratie
        case .phnomPenh:
            return SubdivisionsCambodia.phnom_penh
        case .mondulkiri:
            return SubdivisionsCambodia.mondulkiri
        case .siemReapAngkor:
            return SubdivisionsCambodia.siem_reap
        case .sihanouk:
            return SubdivisionsCambodia.preah_sihanouk
        case .stungTreng:
            return SubdivisionsCambodia.stung_treng
        }
    }

    public var iata : String {
        switch self {
        case .ratanakiri: return "RBE"
        case .battambang: return "BBM"
        case .kampongCham: return "KCA"
        case .kampongChhnang: return "KZC"
        case .kohKong: return "KKZ"
        case .krakor: return "KZD"
        case .kratie: return "KTI"
        case .phnomPenh: return "PNH"
        case .mondulkiri: return "MWV"
        case .siemReapAngkor: return "SAI"
        case .sihanouk: return "KOS"
        case .stungTreng: return "TNX"
        }
    }

    public var icao : String {
        switch self {
        case .ratanakiri: return "VDRK"
        case .battambang: return "VDBG"
        case .kampongCham: return "VDKC"
        case .kampongChhnang: return "VDKH"
        case .kohKong: return "VDKK"
        case .krakor: return "VDSY"
        case .kratie: return "VDKT"
        case .phnomPenh: return "VDPP"
        case .mondulkiri: return "VDMK"
        case .siemReapAngkor: return "VDSA"
        case .sihanouk: return "VDSV"
        case .stungTreng: return "VDST"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
