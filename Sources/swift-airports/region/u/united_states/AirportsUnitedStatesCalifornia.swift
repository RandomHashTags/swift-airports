//
//  AirportsUnitedStatesCalifornia.swift
//
//
//  Created by Evan Anderson on 11/26/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesCalifornia : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_California
    case arcata
    case meadows
    case hollywood
    case fresno
    case longBeach
    case losAngeles
    case monterey
    case oakland
    case ontario
    case johnWayne
    case palmSprings
    case redding
    case sacramento
    case sanDiego
    case sanFrancisco
    case sanJose
    case sanLuis
    case santaBarbara
    case santaMaria
    case sonoma
    case stockton
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.california
    }
    
    public var faa : String {
        switch self {
        case .arcata: return "ACV"
        case .meadows: return "BFL"
        case .hollywood: return "BUR"
        case .fresno: return "FAT"
        case .longBeach: return "LGB"
        case .losAngeles: return "LAX"
        case .monterey: return "MRY"
        case .oakland: return "OAK"
        case .ontario: return "ONT"
        case .johnWayne: return "SNA"
        case .palmSprings: return "PSP"
        case .redding: return "RDD"
        case .sacramento: return "SMF"
        case .sanDiego: return "SAN"
        case .sanFrancisco: return "SFO"
        case .sanJose: return "SJC"
        case .sanLuis: return "SBP"
        case .santaBarbara: return "SBA"
        case .santaMaria: return "SMX"
        case .sonoma: return "STS"
        case .stockton: return "SCK"
        }
    }
    
    public var iata : String {
        return faa
    }
    
    public var icao : String {
        return "K" + faa
    }
    
    public var websiteURL : String? {
        switch self {
        case .arcata: return "https://www.flyacv.com"
        case .meadows: return "https://www.meadowsfield.com"
        case .hollywood: return "https://www.hollywoodburbankairport.com"
        case .fresno: return "https://flyfresno.com"
        case .longBeach: return "https://www.longbeach.gov/#section-airport"
        case .losAngeles: return "https://www.flylax.com"
        case .monterey: return "https://www.montereyairport.com"
        case .oakland: return "https://www.oaklandairport.com"
        case .ontario: return "https://www.flyontario.com"
        case .johnWayne: return "https://www.ocair.com"
        case .palmSprings: return "https://flypsp.com"
        case .redding: return "https://www.cityofredding.gov/government/departments/airports/redding_regional_airport.php"
        case .sacramento: return "https://sacramento.aero/smf"
        case .sanDiego: return "https://www.san.org"
        case .sanFrancisco: return "https://www.flysfo.com"
        case .sanJose: return "https://www.flysanjose.com"
        case .sanLuis: return "https://www.sloairport.com"
        case .santaBarbara: return "https://flysba.santabarbaraca.gov"
        case .santaMaria: return "http://www.santamariaairport.com" // TODO: fix? | insecure
        case .sonoma: return "https://sonomacountyairport.org"
        case .stockton: return "https://flystockton.com"
        }
    }
}
