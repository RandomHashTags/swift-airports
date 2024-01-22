//
//  AirportsZimbabwe.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsZimbabwe : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Zimbabwe
    public typealias SubdivisionLevel1Type = SubdivisionsZimbabwe
    
    case joshuaMqabukoNkomo
    case chipinge
    case buffaloRange
    case gweruThornhill
    case robertGabrielMugabe
    case hwangeNationalPark
    case hwangeTown
    case kariba
    case masvingo
    case mutare
    case victoriaFalls
    
    public var country : Country {
        return Country.zimbabwe
    }
    
    public var subdivisionLevel1 : SubdivisionsZimbabwe {
        switch self {
        case .joshuaMqabukoNkomo:
            return SubdivisionsZimbabwe.bulawayo
        case .chipinge,
                .mutare:
            return SubdivisionsZimbabwe.manicaland
        case .buffaloRange,
                .masvingo:
            return SubdivisionsZimbabwe.masvingo
        case .gweruThornhill:
            return SubdivisionsZimbabwe.midlands
        case .robertGabrielMugabe:
            return SubdivisionsZimbabwe.harare
        case .hwangeNationalPark,
                .hwangeTown,
                .victoriaFalls:
            return SubdivisionsZimbabwe.matabeleland_north
        case .kariba:
            return SubdivisionsZimbabwe.mashonaland_west
        }
    }

    public var iata : String {
        switch self {
        case .joshuaMqabukoNkomo: return "BUQ"
        case .chipinge: return "CHJ"
        case .buffaloRange: return "BFO"
        case .gweruThornhill: return "GWE"
        case .robertGabrielMugabe: return "HRE"
        case .hwangeNationalPark: return "HWN"
        case .hwangeTown: return "WKI"
        case .kariba: return "KAB"
        case .masvingo: return "MVZ"
        case .mutare: return "UTA"
        case .victoriaFalls: return "VFA"
        }
    }

    public var icao : String {
        switch self {
        case .joshuaMqabukoNkomo: return "FVBU"
        case .chipinge: return "FVCH"
        case .buffaloRange: return "FVCZ"
        case .gweruThornhill: return "FVTL"
        case .robertGabrielMugabe: return "FVHA"
        case .hwangeNationalPark: return "FVWN"
        case .hwangeTown: return "FVWT"
        case .kariba: return "FVKB"
        case .masvingo: return "FVMV"
        case .mutare: return "FVMU"
        case .victoriaFalls: return "FVFA"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
