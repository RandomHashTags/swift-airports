//
//  AirportsAustraliaSouth.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsAustraliaSouth : String, AirportAustralia { // https://en.wikipedia.org/wiki/List_of_airports_in_Australia | https://en.wikipedia.org/wiki/List_of_airports_in_South_Australia
    case adelaide
    case altonDowns
    case amata
    case andamooka
    case balcanoona
    case ceduna
    case cleve
    case cliftonHillsLandingStrip
    case cooberPedy
    case cordilloDowns
    case cowarie
    case cowell
    case dulkaninna
    case etadunna
    case hawker
    case indulkana
    case innamincka
    case kingscote
    case leighCreek
    case lock
    case marla
    case marree
    case mertyMerty
    case millicent
    case minnipa
    case minlaton
    case moolawatana
    case moomba
    case mountGambier
    case mountGunson
    case mulka
    case mungeranie
    case olympicDam
    case oodnadatta
    case pandiePandie
    case penneshaw
    case portAugusta
    case portLincoln
    case portPirie
    case prominentHill
    case pukatja
    case renmark
    case streakyBay
    case whyalla
    case wudinna
    case yalataMission
    case yorketown
    
    public var subdivisionLevel1 : SubdivisionsAustralia {
        return SubdivisionsAustralia.south_australia
    }
    
    public var iata : String {
        switch self {
        case .adelaide: return "ADL"
        case .altonDowns: return "AWN"
        case .amata: return "AMT"
        case .andamooka: return "ADO"
        case .balcanoona: return "LCN"
        case .ceduna: return "CED"
        case .cleve: return "CVC"
        case .cliftonHillsLandingStrip: return "CFH"
        case .cooberPedy: return "CPD"
        case .cordilloDowns: return "ODL"
        case .cowarie: return "CWR"
        case .cowell: return "CCW"
        case .dulkaninna: return "DLK"
        case .etadunna: return "ETD"
        case .hawker: return "HWK"
        case .indulkana: return "IDK"
        case .innamincka: return "INM"
        case .kingscote: return "KGC"
        case .leighCreek: return "LGH"
        case .lock: return "LOC"
        case .marla: return "MRP"
        case .marree: return "RRE"
        case .mertyMerty: return "RTY"
        case .millicent: return "MLR"
        case .minnipa: return "MIN"
        case .minlaton: return "XML"
        case .moolawatana: return "MWT"
        case .moomba: return "MOO"
        case .mountGambier: return "MGB"
        case .mountGunson: return "GSN"
        case .mulka: return "MVK"
        case .mungeranie: return "MNE"
        case .olympicDam: return "OLP"
        case .oodnadatta: return "ODD"
        case .pandiePandie: return "PDE"
        case .penneshaw: return "PEA"
        case .portAugusta: return "PUG"
        case .portLincoln: return "PLO"
        case .portPirie: return "PPI"
        case .prominentHill: return "PXH"
        case .pukatja: return "ERB"
        case .renmark: return "RMK"
        case .streakyBay: return "KBY"
        case .whyalla: return "WYA"
        case .wudinna: return "WUD"
        case .yalataMission: return "KYI"
        case .yorketown: return "ORR"
        }
    }
    
    public var icao : String {
        switch self {
        case .adelaide: return "YPAD"
        case .altonDowns: return "YADS"
        case .amata: return "YAMT"
        case .andamooka: return "YAMK"
        case .balcanoona: return "YBLC"
        case .ceduna: return "YCDU"
        case .cleve: return "YCEE"
        case .cliftonHillsLandingStrip: return "YCFH"
        case .cooberPedy: return "YCBP"
        case .cordilloDowns: return "YCOD"
        case .cowarie: return "YCWI"
        case .cowell: return "YCWL"
        case .dulkaninna: return "YDLK"
        case .etadunna: return "YEDA"
        case .hawker: return "YHAW"
        case .indulkana: return "YIDK"
        case .innamincka: return "YINN"
        case .kingscote: return "YKSC"
        case .leighCreek: return "YLEC"
        case .lock: return "YLOK"
        case .marla: return "YALA"
        case .marree: return "YMRE"
        case .mertyMerty: return "YMYT"
        case .millicent: return "YMCT"
        case .minnipa: return "YMPA"
        case .minlaton: return "YMIN"
        case .moolawatana: return "YMWT"
        case .moomba: return "YOOM"
        case .mountGambier: return "YMTG"
        case .mountGunson: return "YMGN"
        case .mulka: return "YMUK"
        case .mungeranie: return "YMUG"
        case .olympicDam: return "YOLD"
        case .oodnadatta: return "YOOD"
        case .pandiePandie: return "YPDI"
        case .penneshaw: return "YPSH"
        case .portAugusta: return "YPAG"
        case .portLincoln: return "YPLC"
        case .portPirie: return "YPIR"
        case .prominentHill: return "YPMH"
        case .pukatja: return "YERN"
        case .renmark: return "YREN"
        case .streakyBay: return "YKBY"
        case .whyalla: return "YWHA"
        case .wudinna: return "YWUD"
        case .yalataMission: return "YYTA"
        case .yorketown: return "YYOR"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
