//
//  AirportsPoland.swift
//
//
//  Created by Evan Anderson on 1/17/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsPoland : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Poland
    
    public typealias SubdivisionLevel1Type = SubdivisionsPoland
    
    case warsawChopin
    case krakowJohnPaulII
    case gdanskLechWalesa
    case katowiceWojciechKorfanty
    case warsawModlin
    case wroclawCopernicus
    case poznanLawicaKenrykWieniawski
    case rzeszowJasionka
    case solidaritySzczecinGoleniow
    case lublin
    case bydgoszczIgnacyJanPaderewski
    case lodzWladyslawReymont
    case olsztnMazury
    case zielonaGoraBabimost
    case warsawRadom
    
    public var country : Country {
        return Country.poland
    }
    
    public var subdivisionLevel1 : SubdivisionsPoland {
        switch self {
        case .warsawChopin,
                .warsawModlin,
                .warsawRadom:
            return SubdivisionsPoland.masovian
        case .krakowJohnPaulII: return SubdivisionsPoland.lesser_poland
        case .gdanskLechWalesa: return SubdivisionsPoland.pomeranian
        case .katowiceWojciechKorfanty: return SubdivisionsPoland.silesian
        case .wroclawCopernicus: return SubdivisionsPoland.lower_silesian
        case .poznanLawicaKenrykWieniawski: return SubdivisionsPoland.greater_poland
        case .rzeszowJasionka: return SubdivisionsPoland.subcarpathian
        case .solidaritySzczecinGoleniow: return SubdivisionsPoland.west_pomeranian
        case .lublin: return SubdivisionsPoland.lublin
        case .bydgoszczIgnacyJanPaderewski: return SubdivisionsPoland.kuyavia_pomeranian
        case .lodzWladyslawReymont: return SubdivisionsPoland.lodz
        case .olsztnMazury: return SubdivisionsPoland.warmian_masurian
        case .zielonaGoraBabimost: return SubdivisionsPoland.lubusz
        }
    }
    
    public var iata : String {
        switch self {
        case .warsawChopin: return "WAW"
        case .krakowJohnPaulII: return "KRK"
        case .gdanskLechWalesa: return "GDN"
        case .katowiceWojciechKorfanty: return "KTW"
        case .warsawModlin: return "WMI"
        case .wroclawCopernicus: return "WRO"
        case .poznanLawicaKenrykWieniawski: return "POZ"
        case .rzeszowJasionka: return "RZE"
        case .solidaritySzczecinGoleniow: return "SZZ"
        case .lublin: return "LUZ"
        case .bydgoszczIgnacyJanPaderewski: return "BZG"
        case .lodzWladyslawReymont: return "LCJ"
        case .olsztnMazury: return "SZY"
        case .zielonaGoraBabimost: return "IEG"
        case .warsawRadom: return "RDO"
        }
    }
    
    public var icao : String {
        switch self {
        case .warsawChopin: return "EPWA"
        case .krakowJohnPaulII: return "EPKK"
        case .gdanskLechWalesa: return "EPGD"
        case .katowiceWojciechKorfanty: return "EPKT"
        case .warsawModlin: return "EPMO"
        case .wroclawCopernicus: return "EPWR"
        case .poznanLawicaKenrykWieniawski: return "EPPO"
        case .rzeszowJasionka: return "EPRZ"
        case .solidaritySzczecinGoleniow: return "EPSC"
        case .lublin: return "EPLB"
        case .bydgoszczIgnacyJanPaderewski: return "EPBY"
        case .lodzWladyslawReymont: return "EPLL"
        case .olsztnMazury: return "EPSY"
        case .zielonaGoraBabimost: return "EPZG"
        case .warsawRadom: return "EPRA"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
