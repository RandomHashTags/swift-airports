//
//  AirportsNetherlands.swift
//
//
//  Created by Evan Anderson on 11/30/23.
//

import Foundation
import SwiftSovereignStates

public enum AirportsNetherlands : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_the_Netherlands
    public typealias SubdivisionLevel1Type = SubdivisionsNetherlands
    
    case amsterdam
    //case flamingo
    case denHelder
    case eindhoven
    case enschede
    case groningen
    case lelystad
    case maastrichtAachen
    case rotterdamTheHauge
    //case juanchoYrausquin
    //case fdRoosevelt
    
    case gilzeRijen
    case leeuwarden
    //case valkenburg
    //case soesterberg
    case volkel
    case woensdrecht
    
    public var country : Country {
        return Country.netherlands
    }
    
    public var subdivisionLevel1 : SubdivisionsNetherlands {
        switch self {
        case .amsterdam: return SubdivisionsNetherlands.north_holland
        //case .flamingo: return SubdivisionsNetherlands.caribbeanNetherlands
        case .denHelder: return SubdivisionsNetherlands.north_holland
        case .eindhoven: return SubdivisionsNetherlands.north_brabant
        case .enschede: return SubdivisionsNetherlands.overijssel
        case .groningen: return SubdivisionsNetherlands.drenthe
        case .lelystad: return SubdivisionsNetherlands.flevoland
        case .maastrichtAachen: return SubdivisionsNetherlands.limburg
        case .rotterdamTheHauge: return SubdivisionsNetherlands.south_holland
        //case .juanchoYrausquin: return SubdivisionsNetherlands.caribbeanNetherlands
        //case .fdRoosevelt: return SubdivisionsNetherlands.caribbeanNetherlands
            
        case .gilzeRijen: return SubdivisionsNetherlands.north_brabant
        case .leeuwarden: return SubdivisionsNetherlands.friesland
        //case .valkenburg: return SubdivisionsNetherlands.south_holland
        //case .soesterberg: return SubdivisionsNetherlands.utrecht
        case .volkel: return SubdivisionsNetherlands.north_brabant
        case .woensdrecht: return SubdivisionsNetherlands.north_brabant
        }
    }
    
    public var iata : String {
        switch self {
        case .amsterdam: return "AMS"
        case .denHelder: return "DHR"
        case .eindhoven: return "EIN"
        case .enschede: return "ENS"
        case .groningen: return "GRQ"
        case .lelystad: return "LEY"
        case .maastrichtAachen: return "MST"
        case .rotterdamTheHauge: return "RTM"
            
        case .gilzeRijen: return "GLZ"
        case .leeuwarden: return "LWR"
        //case .valkenburg: return "LID"
        //case .soesterberg: return "UTC"
        case .volkel: return "UDE"
        case .woensdrecht: return "WOE"
        }
    }
    
    public var icao : String {
        let suffix:String
        switch self {
        case .amsterdam:
            suffix = "AM"
            break
        case .denHelder:
            suffix = "KD"
            break
        case .eindhoven:
            suffix = "EH"
            break
        case .enschede:
            suffix = "TW"
            break
        case .groningen:
            suffix = "GG"
            break
        case .lelystad:
            suffix = "LE"
            break
        case .maastrichtAachen:
            suffix = "BK"
            break
        case .rotterdamTheHauge:
            suffix = "RD"
            break
            
        case .gilzeRijen:
            suffix = "GR"
            break
        case .leeuwarden:
            suffix = "LW"
            break
        /*case .valkenburg:
            suffix = "VB"
            break*/
        /*case .soesterberg:
            suffix = "SB"
            break*/
        case .volkel:
            suffix = "VK"
            break
        case .woensdrecht:
            suffix = "WO"
            break
        }
        return "EH" + suffix
    }
    
    public var websiteURL : String? {
        switch self {
        case .amsterdam: return "https://www.schiphol.nl"
        case .denHelder: return "https://denhelderairport.nl"
        case .eindhoven: return "https://www.eindhovenairport.nl"
        case .enschede: return "https://www.twente-airport.nl"
        case .groningen: return "https://www.groningenairport.nl"
        case .lelystad: return "https://www.lelystadairport.nl"
        case .maastrichtAachen: return "https://www.maa.nl"
        case .rotterdamTheHauge: return "https://www.rotterdamthehagueairport.nl"
            
        case .gilzeRijen: return "https://www.defensie.nl/organisatie/luchtmacht/vliegbases-en-luchtmachtonderdelen/gilze-rijen"
        case .leeuwarden: return "https://www.defensie.nl/organisatie/luchtmacht/vliegbases-en-luchtmachtonderdelen/leeuwarden"
        //case .valkenburg: return nil
        //case .soesterberg: return nil
        case .volkel: return "https://www.defensie.nl/organisatie/luchtmacht/vliegbases-en-luchtmachtonderdelen/volkel"
        case .woensdrecht: return "https://www.defensie.nl/organisatie/luchtmacht/vliegbases-en-luchtmachtonderdelen/woensdrecht"
        }
    }
}
