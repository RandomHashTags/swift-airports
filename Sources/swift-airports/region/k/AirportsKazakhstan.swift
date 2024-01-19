//
//  AirportsKazakhstan.swift
//
//
//  Created by Evan Anderson on 1/18/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsKazakhstan : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Kazakhstan
    public typealias SubdivisionLevel1Type = SubdivisionsKazakhstan
    
    case aktau
    case aktobe
    case almaty
    case arkalyk
    case atyrau
    case balkhash
    case ekibastuz
    case saryArka
    case kokshetau
    case kostanay
    case kyzylorda
    case nursultanNazarbayev
    case oralAkZhol
    case oskemen
    case pavlodar
    case petropavl
    //case semey
    case shymkent
    case taldykorgan
    case taraz
    case hazratSultan
    //case urzhar
    //case usharal
    case zaysan
    //case zhezkazgan
    
    public var country : Country {
        return Country.kazakhstan
    }
    
    public var subdivisionLevel1 : SubdivisionsKazakhstan {
        switch self {
        case .aktau:
            return SubdivisionsKazakhstan.mangystau
        case .aktobe:
            return SubdivisionsKazakhstan.aktobe
        case .almaty,
                .taldykorgan:
            return SubdivisionsKazakhstan.almaty
        case .arkalyk:
            return SubdivisionsKazakhstan.kostanay
        case .atyrau:
            return SubdivisionsKazakhstan.atyrau
        case .balkhash,
                .saryArka:
            return SubdivisionsKazakhstan.karaganda
        case .ekibastuz,
                .pavlodar:
            return SubdivisionsKazakhstan.pavlodar
        case .kokshetau,
                .nursultanNazarbayev:
            return SubdivisionsKazakhstan.akmola
        case .kostanay:
            return SubdivisionsKazakhstan.kostanay
        case .kyzylorda:
            return SubdivisionsKazakhstan.kyzylorda
        case .oralAkZhol:
            return SubdivisionsKazakhstan.west_kazakhstan
        case .oskemen,
                .zaysan:
            return SubdivisionsKazakhstan.east_kazakhstan
        case .petropavl:
            return SubdivisionsKazakhstan.north_kazakhstan
        //case .semey,
        //        .urzhar:
        //    return SubdivisionsKazakhstan.abai // TODO: include (update swift-sovereign-states)
        case .shymkent:
            return SubdivisionsKazakhstan.shymkent
        case .taraz:
            return SubdivisionsKazakhstan.jambyl
        case .hazratSultan:
            return SubdivisionsKazakhstan.turkistan
        //case .usharal:
        //    return SubdivisionsKazakhstan.jetisu // TODO: include (update swift-sovereign-states)
        //case .zhezkazgan:
        //    return SubdivisionsKazakhstan.ulytau // TODO: include (update swift-sovereign-states)
        }
    }
    
    public var iata : String {
        switch self {
        case .aktau: return "SCO"
        case .aktobe: return "AKX"
        case .almaty: return "ALA"
        case .arkalyk: return "AYK"
        case .atyrau: return "GUW"
        case .balkhash: return "BXH"
        case .ekibastuz: return "EKB"
        case .saryArka: return "KGF"
        case .kokshetau: return "KOV"
        case .kostanay: return "KSN"
        case .kyzylorda: return "KZO"
        case .nursultanNazarbayev: return "NQZ"
        case .oralAkZhol: return "URA"
        case .oskemen: return "UKK"
        case .pavlodar: return "PWQ"
        case .petropavl: return "PPK"
        //case .semey: return "PLX"
        case .shymkent: return "CIT"
        case .taldykorgan: return "TDK"
        case .taraz: return "DMB"
        case .hazratSultan: return "HSA"
        //case .urzhar: return "UZR"
        //case .usharal: return "USJ"
        case .zaysan: return "SZI"
        //case .zhezkazgan: return "DZN"
        }
    }
    
    public var icao : String {
        switch self {
        case .aktau: return "UATE"
        case .aktobe: return "UATT"
        case .almaty: return "UAAA"
        case .arkalyk: return "UAUR"
        case .atyrau: return "UATG"
        case .balkhash: return "UAAH"
        case .ekibastuz: return "UASB"
        case .saryArka: return "UAKK"
        case .kokshetau: return "UACK"
        case .kostanay: return "UAUU"
        case .kyzylorda: return "UAOO"
        case .nursultanNazarbayev: return "UACC"
        case .oralAkZhol: return "UARR"
        case .oskemen: return "UASK"
        case .pavlodar: return "UASP"
        case .petropavl: return "UACP"
        //case .semey: return "UASS"
        case .shymkent: return "UAII"
        case .taldykorgan: return "UAAT"
        case .taraz: return "UADD"
        case .hazratSultan: return "UAIT"
        //case .urzhar: return "UASU"
        //case .usharal: return "UAAL"
        case .zaysan: return "UASZ"
        //case .zhezkazgan: return "UAKD"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
