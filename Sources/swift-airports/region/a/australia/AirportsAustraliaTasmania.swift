//
//  AirportsAustraliaTasmania.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsAustraliaTasmania : String, AirportAustralia { // https://en.wikipedia.org/wiki/List_of_airports_in_Australia | https://en.wikipedia.org/wiki/List_of_airports_in_Tasmania
    case capeBarrenIsland
    case devonport
    case flindersIsland
    case georgeTown
    case queenstown
    case hobart
    case kingIsland
    case launceston
    case stHelens
    case smithton
    case strahan
    case burnie
    
    public var subdivisionLevel1 : SubdivisionsAustralia {
        return SubdivisionsAustralia.tasmania
    }
    
    public var iata : String {
        switch self {
        case .capeBarrenIsland: return "CBI"
        case .devonport: return "DPO"
        case .flindersIsland: return "FLS"
        case .georgeTown: return "GEE"
        case .queenstown: return "UEE"
        case .hobart: return "HBA"
        case .kingIsland: return "KNS"
        case .launceston: return "LST"
        case .stHelens: return "HLS"
        case .smithton: return "SIO"
        case .strahan: return "SRN"
        case .burnie: return "BWT"
        }
    }
    
    public var icao : String {
        switch self {
        case .capeBarrenIsland: return "YCBN"
        case .devonport: return "YDPO"
        case .flindersIsland: return "YFLI"
        case .georgeTown: return "YGTO"
        case .queenstown: return "YQNS"
        case .hobart: return "YMHB"
        case .kingIsland: return "YKII"
        case .launceston: return "YMLT"
        case .stHelens: return "YSTH"
        case .smithton: return "YSMI"
        case .strahan: return "YSRN"
        case .burnie: return "YWYY"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
