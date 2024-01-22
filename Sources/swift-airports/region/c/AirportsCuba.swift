//
//  AirportsCuba.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsCuba : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Cuba
    public typealias SubdivisionLevel1Type = SubdivisionsCuba
    
    case gustavoRizo
    case carlosManuelDeCespedes
    case ignacioAgramonte
    case jardinesDelRey
    case viloAcuna
    case lasBrujas
    case maximoGomez
    case jaimeGonzalez
    case marianaGrajales
    case joseMarti
    case playaBaracoa
    case frankPais
    case hermanosAmeijeiras
    case sierraMaestra
    case orestesAcosta
    case rafaelCabreraMustelier
    case siguanea
    case laColoma
    case puntaDeMaisi
    case sanNicolasDeBari
    case sanctiSpiritus
    case abelSantamaria
    case antonioMaceo
    case albertoDelgado
    case juanGualbertoGomez
    case leewardPointField
    case sanJulian
    
    public var country : Country {
        return Country.cuba
    }
    
    public var subdivisionLevel1 : SubdivisionsCuba {
        switch self {
        case .gustavoRizo,
                .marianaGrajales,
                .puntaDeMaisi,
                .leewardPointField:
            return SubdivisionsCuba.guantanamo
        case .carlosManuelDeCespedes,
                .sierraMaestra:
            return SubdivisionsCuba.granma
        case .ignacioAgramonte:
            return SubdivisionsCuba.camaguey
        case .jardinesDelRey,
                .maximoGomez:
            return SubdivisionsCuba.ciego_de_avila
        case .viloAcuna,
                .rafaelCabreraMustelier,
                .siguanea:
            return SubdivisionsCuba.isla_de_la_juventud
        case .lasBrujas,
                .abelSantamaria:
            return SubdivisionsCuba.villa_clara
        case .jaimeGonzalez:
            return SubdivisionsCuba.cienfuegos
        case .joseMarti:
            return SubdivisionsCuba.la_habana
        case .playaBaracoa:
            return SubdivisionsCuba.artemisa
        case .frankPais,
                .orestesAcosta:
            return SubdivisionsCuba.holguin
        case .hermanosAmeijeiras:
            return SubdivisionsCuba.las_tunas
        case .laColoma,
                .sanJulian:
            return SubdivisionsCuba.pinar_del_rio
        case .sanNicolasDeBari:
            return SubdivisionsCuba.mayabeque
        case .sanctiSpiritus,
                .albertoDelgado:
            return SubdivisionsCuba.sancti_spiritus
        case .antonioMaceo:
            return SubdivisionsCuba.santiago_de_cuba
        case .juanGualbertoGomez:
            return SubdivisionsCuba.matanzas
        }
    }

    public var iata : String {
        switch self {
        case .gustavoRizo: return "BCA"
        case .carlosManuelDeCespedes: return "BYM"
        case .ignacioAgramonte: return "CMW"
        case .jardinesDelRey: return "CCC"
        case .viloAcuna: return "CYO"
        case .lasBrujas: return "BWW"
        case .maximoGomez: return "AVI"
        case .jaimeGonzalez: return "CFG"
        case .marianaGrajales: return "GAO"
        case .joseMarti: return "HAV"
        case .playaBaracoa: return "UPB"
        case .frankPais: return "HOG"
        case .hermanosAmeijeiras: return "VTU"
        case .sierraMaestra: return "MZO"
        case .orestesAcosta: return "MOA"
        case .rafaelCabreraMustelier: return "GER"
        case .siguanea: return "SZJ"
        case .laColoma: return "LCL"
        case .puntaDeMaisi: return "UMA"
        case .sanNicolasDeBari: return "QSN"
        case .sanctiSpiritus: return "USS"
        case .abelSantamaria: return "SNU"
        case .antonioMaceo: return "SCU"
        case .albertoDelgado: return "TND"
        case .juanGualbertoGomez: return "VRA"
        case .leewardPointField: return "NBW"
        case .sanJulian: return "SNJ"
        }
    }

    public var icao : String {
        switch self {
        case .gustavoRizo: return "MUBA"
        case .carlosManuelDeCespedes: return "MUBY"
        case .ignacioAgramonte: return "MUCM"
        case .jardinesDelRey: return "MUCC"
        case .viloAcuna: return "MUCL"
        case .lasBrujas: return "MUBR"
        case .maximoGomez: return "MUCA"
        case .jaimeGonzalez: return "MUCF"
        case .marianaGrajales: return "MUGT"
        case .joseMarti: return "MUHA"
        case .playaBaracoa: return "MUPB"
        case .frankPais: return "MUHG"
        case .hermanosAmeijeiras: return "MUVT"
        case .sierraMaestra: return "MUMZ"
        case .orestesAcosta: return "MUMO"
        case .rafaelCabreraMustelier: return "MUNG"
        case .siguanea: return "MUSN"
        case .laColoma: return "MULM"
        case .puntaDeMaisi: return "MUMA"
        case .sanNicolasDeBari: return "MUNB"
        case .sanctiSpiritus: return "MUSS"
        case .abelSantamaria: return "MUSC"
        case .antonioMaceo: return "MUCU"
        case .albertoDelgado: return "MUTD"
        case .juanGualbertoGomez: return "MUVR"
        case .leewardPointField: return "MUGM"
        case .sanJulian: return "MUSJ"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
