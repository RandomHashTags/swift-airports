//
//  AirportsYemen.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsYemen : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Yemen
    public typealias SubdivisionLevel1Type = SubdivisionsYemen
    
    case abbs
    case aden
    case alBayda
    case alGhaydah
    case albuq
    case ataq
    case beihan
    case hodeida
    case kamaran
    case marib
    case riyan
    case mukeiras
    case qishn
    case saadah
    case sanaa
    case seiyun
    case socotra
    case taiz
    
    public var country : Country {
        return Country.yemen
    }
    
    public var subdivisionLevel1 : SubdivisionsYemen {
        switch self {
        case .abbs:
            return SubdivisionsYemen.hajjah
        case .aden:
            return SubdivisionsYemen.aden
        case .alBayda:
            return SubdivisionsYemen.al_bayda
        case .alGhaydah,
                .qishn:
            return SubdivisionsYemen.al_mahrah
        case .albuq,
                .saadah:
            return SubdivisionsYemen.saada
        case .ataq,
                .beihan:
            return SubdivisionsYemen.shabwah
        case .hodeida,
                .kamaran:
            return SubdivisionsYemen.al_hudaydah
        case .marib:
            return SubdivisionsYemen.marib
        case .riyan,
                .seiyun:
            return SubdivisionsYemen.hadhramaut
        case .mukeiras:
            return SubdivisionsYemen.abyan
        case .sanaa:
            return SubdivisionsYemen.sanaa
        case .socotra:
            return SubdivisionsYemen.socotra
        case .taiz:
            return SubdivisionsYemen.taiz
        }
    }

    public var iata : String {
        switch self {
        case .abbs: return "EAB"
        case .aden: return "ADE"
        case .alBayda: return "BYD"
        case .alGhaydah: return "AAY"
        case .albuq: return "BUK"
        case .ataq: return "AXK"
        case .beihan: return "BHN"
        case .hodeida: return "HOD"
        case .kamaran: return "KAM"
        case .marib: return "MYN"
        case .riyan: return "RIY"
        case .mukeiras: return "UKR"
        case .qishn: return "IHN"
        case .saadah: return "SYE"
        case .sanaa: return "SAH"
        case .seiyun: return "GXF"
        case .socotra: return "SCT"
        case .taiz: return "TAI"
        }
    }

    public var icao : String {
        switch self {
        case .abbs: return "OYAB"
        case .aden: return "OYAA"
        case .alBayda: return "OYBI"
        case .alGhaydah: return "OYGD"
        case .albuq: return "OYBQ"
        case .ataq: return "OYAT"
        case .beihan: return "OYBN"
        case .hodeida: return "OYHD"
        case .kamaran: return "OYKM"
        case .marib: return "OYMB"
        case .riyan: return "OYRN"
        case .mukeiras: return "OYMK"
        case .qishn: return "OYQN"
        case .saadah: return "OYSH"
        case .sanaa: return "OYSN"
        case .seiyun: return "OYSY"
        case .socotra: return "OYSQ"
        case .taiz: return "OYTZ"
        }
    }
    
    public var websiteURL : String? {
        return nil
    }
}
