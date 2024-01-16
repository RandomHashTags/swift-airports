//
//  AirportsIndia.swift
//
//
//  Created by Evan Anderson on 1/16/24.
//

import Foundation
import SwiftSovereignStates

public protocol AirportIndia : Airport where SubdivisionLevel1Type == SubdivisionsIndia { // https://en.wikipedia.org/wiki/List_of_airports_in_India
}
public extension AirportIndia {
    var country : Country {
        return Country.india
    }
}

public extension SubdivisionsIndia {
    var airportsType : any AirportIndia.Type {
        switch self {
        case .andhra_pradesh: return AirportsIndiaAndhra.self
        case .arunachal_pradesh: return AirportsIndiaArunachal.self
        case .assam: return AirportsIndiaAssam.self
        case .bihar: return AirportsIndiaBihar.self
        case .chhattisgarh: return AirportsIndiaChhattisgarh.self
        case .goa: return AirportsIndiaGao.self
        case .gujarat: return AirportsIndiaGujarat.self
        case .haryana: return AirportsIndiaHaryana.self
        case .himachal_pradesh: return AirportsIndiaHimachal.self
        case .jharkhand: return AirportsIndiaJharkhand.self
        case .karnataka: return AirportsIndiaKarnataka.self
        case .kerala: return AirportsIndiaKerala.self
        case .madhya_pradesh: return AirportsIndiaMadhya.self
        case .maharashtra: return AirportsIndiaMaharashtra.self
        case .manipur: return AirportsIndiaManipur.self
        case .meghalaya: return AirportsIndiaMeghalaya.self
        case .mizoram: return AirportsIndiaMizoram.self
        case .nagaland: return AirportsIndiaNagaland.self
        case .odisha: return AirportsIndiaOdisha.self
        case .punjab: return AirportsIndiaPunjab.self
        case .rajasthan: return AirportsIndiaRajasthan.self
        case .sikkim: return AirportsIndiaSikkim.self
        case .tamil_nadu: return AirportsIndiaTamilNadu.self
        case .telangana: return AirportsIndiaTelangana.self
        case .tripura: return AirportsIndiaTripura.self
        case .uttar_pradesh: return AirportsIndiaUttar.self
        case .uttarakhand: return AirportsIndiaUttarakhand.self
        case .west_bengal: return AirportsIndiaWestBengal.self
            
        case .andaman_and_nicobar_islands: return AirportsIndiaAndamanAndNicobarIslands.self
        case .chandigarh: return AirportsIndiaChandigarh.self
        case .dadra_and_nagar_haveli_and_daman_and_diu: return AirportsIndiaDadraAndNagarHaveliAndDamanAndDiu.self
        case .delhi: return AirportsIndiaDelhi.self
        case .jammu_and_kashmir: return AirportsIndiaJammuAndKashmir.self
        case .ladakh: return AirportsIndiaLadakh.self
        case .lakshadweep: return AirportsIndiaLakshadweek.self
        case .puducherry: return AirportsIndiaPuducherry.self
        }
    }
    
    var airports : [any AirportIndia] {
        return airportsType.allCases as! [any AirportIndia]
    }
}
