//
//  AirportsUnitedStatesVirginia.swift
//  
//
//  Created by Evan Anderson on 11/29/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsUnitedStatesVirginia : String, AirportUnitedStates { // https://en.wikipedia.org/wiki/List_of_airports_in_the_United_States | https://en.wikipedia.org/wiki/List_of_airports_in_Virginia
    case charlottesville
    case lynchburg
    case newportNews
    case norfolk
    case richmond
    case roanoke
    case shenandoah
    
    public var subdivisionLevel1 : SubdivisionsUnitedStates {
        return SubdivisionsUnitedStates.virginia
    }
    
    public var faa : String {
        switch self {
        case .charlottesville: return "CHO"
        case .lynchburg: return "LYH"
        case .newportNews: return "PHF"
        case .norfolk: return "ORF"
        case .richmond: return "RIC"
        case .roanoke: return "ROA"
        case .shenandoah: return "SHD"
        
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
        case .charlottesville: return "https://gocho.com"
        case .lynchburg: return "https://flylyh.com"
        case .newportNews: return "https://newportnewsairport.com"
        case .norfolk: return "https://www.norfolkairport.com"
        case .richmond: return "https://flyrichmond.com"
        case .roanoke: return "https://www.flyroa.com"
        case .shenandoah: return "https://flyshd.com"
        }
    }
}
