//
//  AirportsAustralia.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import SwiftSovereignStates

public protocol AirportAustralia : Airport where SubdivisionLevel1Type == SubdivisionsAustralia { // https://en.wikipedia.org/wiki/List_of_airports_in_Australia // TODO: add military ports?
}
public extension AirportAustralia {
    var country : Country {
        return Country.australia
    }
}

public extension SubdivisionsAustralia {
    var airportType : (any AirportAustralia.Type)? {
        switch self {
        case .new_south_wales: return AirportsAustraliaNewSouthWales.self
        case .northern_territory: return AirportsAustraliaNorthernTerritory.self
        case .queensland: return AirportsAustraliaQueensland.self
        case .south_australia: return AirportsAustraliaSouth.self
        case .tasmania: return AirportsAustraliaTasmania.self
        case .victoria: return AirportsAustraliaVictoria.self
        case .western_australia: return AirportsAustraliaWestern.self
        default: return nil
        }
    }
    
    var airports : [any AirportAustralia] {
        return airportType?.allCases as? [any AirportAustralia] ?? []
    }
}
