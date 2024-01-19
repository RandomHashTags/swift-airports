//
//  AirportsHungary.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsHungary : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Hungary
    public typealias SubdivisionLevel1Type = SubdivisionsHungary
    
    case budapestFerencLiszt
    case debrecen
    case hevizBalaton
    case gyorPer
    case pecsPogany
    case miskolc
    
    public var country : Country {
        return Country.hungary
    }
    
    public var subdivisionLevel1 : SubdivisionsHungary {
        switch self {
        case .budapestFerencLiszt: return SubdivisionsHungary.budapest
        case .debrecen: return SubdivisionsHungary.hajdu_bihar
        case .hevizBalaton: return SubdivisionsHungary.zala
        case .gyorPer: return SubdivisionsHungary.gyor_moson_sopron
        case .pecsPogany: return SubdivisionsHungary.baranya
        case .miskolc: return SubdivisionsHungary.borsod_abauj_zemplen
        }
    }
    
    public var iata : String {
        switch self {
        case .budapestFerencLiszt: return "BUD"
        case .debrecen: return "DEB"
        case .hevizBalaton: return "SOB"
        case .gyorPer: return "QGY"
        case .pecsPogany: return "PEV"
        case .miskolc: return "MCQ"
        }
    }
    
    public var icao : String {
        switch self {
        case .budapestFerencLiszt: return "LHBP"
        case .debrecen: return "LHDC"
        case .hevizBalaton: return "LHSM"
        case .gyorPer: return "LHPR"
        case .pecsPogany: return "LHPP"
        case .miskolc: return "LHMC"
        }
    }
    
    public var websiteURL : String? {
        switch self {
        case .budapestFerencLiszt: return "https://www.bud.hu"
        case .debrecen: return "https://www.debrecenairport.com"
        case .hevizBalaton: return "https://hevizairport.com"
        case .gyorPer: return "http://www.lhpr.hu/en_EN/home"
        case .pecsPogany: return "http://www.airportpecs.hu"
        case .miskolc: return "https://www.lhmc.hu"
        }
    }
}
