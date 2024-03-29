//
//  AirportsUnitedStates.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import Foundation
import SwiftSovereignStates

public protocol AirportUnitedStates : Airport where SubdivisionLevel1Type == SubdivisionsUnitedStates {
    /// The location identifier assigned by the Federal Aviation Administration (FAA).
    var faa : String { get }
}
public extension AirportUnitedStates {
    var country : Country {
        return Country.united_states
    }
    
    func keywordsAdditional(forLocale locale: Locale) -> Set<String>? {
        return [faa]
    }
}


public extension SubdivisionsUnitedStates {
    var airportsType : (any Airport.Type)? {
        switch self {
        case .alabama: return AirportsUnitedStatesAlabama.self
        case .alaska:  return AirportsUnitedStatesAlaska.self
        case .arizona: return AirportsUnitedStatesArizona.self
        case .arkansas: return AirportsUnitedStatesArkansas.self
        case .california: return AirportsUnitedStatesCalifornia.self
        case .colorado: return AirportsUnitedStatesColorado.self
        case .connecticut: return AirportsUnitedStatesConnecticut.self
        case .delaware: return AirportsUnitedStatesDelaware.self
        case .florida: return AirportsUnitedStatesFlorida.self
        case .georgia: return AirportsUnitedStatesGeorgia.self
        case .hawaii: return AirportsUnitedStatesHawaii.self
        case .idaho: return AirportsUnitedStatesIdaho.self
        case .illinois: return AirportsUnitedStatesIllinois.self
        case .indiana: return AirportsUnitedStatesIndiana.self
        case .iowa: return AirportsUnitedStatesIowa.self
        case .kansas: return AirportsUnitedStatesKansas.self
        case .kentucky: return AirportsUnitedStatesKentucky.self
        case .louisiana: return AirportsUnitedStatesLouisiana.self
        case .maine: return AirportsUnitedStatesMaine.self
        case .maryland: return AirportsUnitedStatesMaryland.self
        case .massachusetts: return AirportsUnitedStatesMassachusetts.self
        case .michigan: return AirportsUnitedStatesMichigan.self
        case .minnesota: return AirportsUnitedStatesMinnesota.self
        case .mississippi: return AirportsUnitedStatesMississippi.self
        case .missouri: return AirportsUnitedStatesMissouri.self
        case .montana: return AirportsUnitedStatesMontana.self
        case .nebraska: return AirportsUnitedStatesNebraska.self
        case .nevada: return AirportsUnitedStatesNevada.self
        case .new_hampshire: return AirportsUnitedStatesNewHampshire.self
        case .new_jersey: return AirportsUnitedStatesNewJersey.self
        case .new_mexico: return AirportsUnitedStatesNewMexico.self
        case .new_york: return AirportsUnitedStatesNewYork.self
        case .north_carolina: return AirportsUnitedStatesNorthCarolina.self
        case .north_dakota: return AirportsUnitedStatesNorthDakota.self
        case .ohio: return AirportsUnitedStatesOhio.self
        case .oklahoma: return AirportsUnitedStatesOklahoma.self
        case .oregon: return AirportsUnitedStatesOregon.self
        case .pennsylvania: return AirportsUnitedStatesPennsylvania.self
        case .rhode_island: return AirportsUnitedStatesRhodeIsland.self
        case .south_carolina: return AirportsUnitedStatesSouthCarolina.self
        case .south_dakota: return AirportsUnitedStatesSouthDakota.self
        case .tennessee: return AirportsUnitedStatesTennessee.self
        case .texas: return AirportsUnitedStatesTexas.self
        case .utah: return AirportsUnitedStatesUtah.self
        case .vermont: return AirportsUnitedStatesVermont.self
        case .virginia: return AirportsUnitedStatesVirginia.self
        case .washington: return AirportsUnitedStatesWashington.self
        case .washington_dc: return AirportsUnitedStatesWashingtonDC.self
        case .west_virginia: return AirportsUnitedStatesWestVirginia.self
        case .wisconsin: return AirportsUnitedStatesWisconsin.self
        case .wyoming: return AirportsUnitedStatesWyoming.self
            
        case .american_samoa: return nil
        case .guam: return nil
        case .marshall_islands: return nil
        case .micronesia: return nil
        case .northern_mariana_islands: return nil
        case .palau: return nil
        case .puerto_rico: return nil
        case .united_states_virgin_islands: return nil
        }
    }
    var airports : [any AirportUnitedStates] {
        return airportsType?.allCases as? [any AirportUnitedStates] ?? []
    }
}
