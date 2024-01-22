//
//  AirportsChile.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import Foundation
import SwiftSovereignStates

public enum AirportsChile : String, Airport { // https://en.wikipedia.org/wiki/List_of_airports_in_Chile
    public typealias SubdivisionLevel1Type = SubdivisionsChile
    
    case pupelDe
    case andresSabellaGalvez
    case chacalluta
    case pampaGuanaco
    case balmaceda
    case elLoa
    case gamboa
    case francoBianco
    case nuevoChaiten
    case chanaral
    case chileChico
    case generalBernardoOHiggins
    case drummondTwins
    case carrielSur
    case desiertoDeAtacama
    case tenienteVidal
    case generalFreire
    case mocopulli
    case ricardoGarciaPosada
    case futaleufu
    case diegoAracena
    case mataveri
    case tenienteRMarsh
    case laFlorida
    case linares
    case sanRafael
    case mariaDolores
    case canalBajoCarlosHottSiebert
    case elTuqui
    case altoPalena
    case capitanFuentesMartinez
    case pucon
    case caboJuanRoman
    case elTepual
    case tenienteJulioGallardo
    case elMirador
    case guardiamarinaZanartu
    case presidenteCarlosIbanezDelCampo
    case rancaguaDeLaIndependencia
    case victorLafon
    case arturoMerinoBenitez
    case elBosque
    case panguilemo
    case lasBreas
    case temucoMaquehue
    case laAraucania
    case barriles
    case pichoy
    case vallenar
    case victoria
    case vinaDelMar
    case rodelillo
    case chuquicamata
    
    public var country : Country {
        return Country.chile
    }
    
    public var subdivisionLevel1 : SubdivisionsChile {
        switch self {
        case .pupelDe,
                .gamboa,
                .nuevoChaiten,
                .mocopulli,
                .futaleufu,
                .canalBajoCarlosHottSiebert,
                .altoPalena,
                .elTepual,
                .elMirador:
            return SubdivisionsChile.los_lagos
        case .andresSabellaGalvez,
                .elLoa,
                .lasBreas,
                .barriles,
                .chuquicamata:
            return SubdivisionsChile.antofagasta
        case .chacalluta:
            return SubdivisionsChile.arica_and_parinacota
        case .pampaGuanaco,
                .francoBianco,
                .tenienteRMarsh,
                .capitanFuentesMartinez,
                .tenienteJulioGallardo,
                .guardiamarinaZanartu,
                .presidenteCarlosIbanezDelCampo:
            return SubdivisionsChile.magallanes
        case .balmaceda,
                .chileChico,
                .drummondTwins,
                .tenienteVidal,
                .caboJuanRoman:
            return SubdivisionsChile.aysen
        case .chanaral,
                .desiertoDeAtacama,
                .ricardoGarciaPosada,
                .vallenar:
            return SubdivisionsChile.atacama
        case .generalBernardoOHiggins,
                .carrielSur,
                .mariaDolores:
            return SubdivisionsChile.biobio
        case .generalFreire:
            return SubdivisionsChile.maule
        case .diegoAracena:
            return SubdivisionsChile.tarapaca
        case .mataveri,
                .sanRafael,
                .victorLafon,
                .vinaDelMar,
                .rodelillo:
            return SubdivisionsChile.valparaiso
        case .laFlorida,
                .elTuqui:
            return SubdivisionsChile.coquimbo
        case .linares:
            return SubdivisionsChile.maule
        case .rancaguaDeLaIndependencia:
            return SubdivisionsChile.o_higgines
        case .pucon,
                .temucoMaquehue,
                .laAraucania,
                .victoria:
            return SubdivisionsChile.araucania
        case .arturoMerinoBenitez,
                .elBosque:
            return SubdivisionsChile.metropolitan
        case .panguilemo:
            return SubdivisionsChile.maule
        case .pichoy:
            return SubdivisionsChile.los_rios
        }
    }

    public var iata : String {
        switch self {
        case .pupelDe: return "ZUD"
        case .andresSabellaGalvez: return "ANF"
        case .chacalluta: return "ARI"
        case .pampaGuanaco: return "DPB"
        case .balmaceda: return "BBA"
        case .elLoa: return "CJC"
        case .gamboa: return "WCA"
        case .francoBianco: return "SMB"
        case .nuevoChaiten: return "WCH"
        case .chanaral: return "CNR"
        case .chileChico: return "CCH"
        case .generalBernardoOHiggins: return "YAI"
        case .drummondTwins: return "LGR"
        case .carrielSur: return "CCP"
        case .desiertoDeAtacama: return "CPO"
        case .tenienteVidal: return "GXQ"
        case .generalFreire: return "ZCQ"
        case .mocopulli: return "MHC"
        case .ricardoGarciaPosada: return "ESR"
        case .futaleufu: return "FFU"
        case .diegoAracena: return "IQQ"
        case .mataveri: return "IPC"
        case .tenienteRMarsh: return "TNM"
        case .laFlorida: return "LSC"
        case .linares: return "ZLR"
        case .sanRafael: return "LOB"
        case .mariaDolores: return "LSQ"
        case .canalBajoCarlosHottSiebert: return "ZOS"
        case .elTuqui: return "OVL"
        case .altoPalena: return "WAP"
        case .capitanFuentesMartinez: return "WPR"
        case .pucon: return "ZPC"
        case .caboJuanRoman: return "WPA"
        case .elTepual: return "PMC"
        case .tenienteJulioGallardo: return "PNT"
        case .elMirador: return "PUX"
        case .guardiamarinaZanartu: return "WPU"
        case .presidenteCarlosIbanezDelCampo: return "PUQ"
        case .rancaguaDeLaIndependencia: return "QRC"
        case .victorLafon: return "SSD"
        case .arturoMerinoBenitez: return "SCL"
        case .elBosque: return "ZBQ"
        case .panguilemo: return "TLX"
        case .lasBreas: return "TTC"
        case .temucoMaquehue: return "PZS"
        case .laAraucania: return "ZCO"
        case .barriles: return "TOQ"
        case .pichoy: return "ZAL"
        case .vallenar: return "VLR"
        case .victoria: return "ZIC"
        case .vinaDelMar: return "KNA"
        case .rodelillo: return "VAP"
        case .chuquicamata: return "QUI"
        }
    }

    public var icao : String {
        switch self {
        case .pupelDe: return "SCAC"
        case .andresSabellaGalvez: return "SCFA"
        case .chacalluta: return "SCAR"
        case .pampaGuanaco: return "SCBI"
        case .balmaceda: return "SCBA"
        case .elLoa: return "SCCF"
        case .gamboa: return "SCST"
        case .francoBianco: return "SCSB"
        case .nuevoChaiten: return "SCTN"
        case .chanaral: return "SCRA"
        case .chileChico: return "SCCC"
        case .generalBernardoOHiggins: return "SCCH"
        case .drummondTwins: return "SCHR"
        case .carrielSur: return "SCIE"
        case .desiertoDeAtacama: return "SCAT"
        case .tenienteVidal: return "SCCY"
        case .generalFreire: return "SCIC"
        case .mocopulli: return "SCPQ"
        case .ricardoGarciaPosada: return "SCES"
        case .futaleufu: return "SCFT"
        case .diegoAracena: return "SCDA"
        case .mataveri: return "SCIP"
        case .tenienteRMarsh: return "SCRM"
        case .laFlorida: return "SCSE"
        case .linares: return "SCLN"
        case .sanRafael: return "SCAN"
        case .mariaDolores: return "SCGE"
        case .canalBajoCarlosHottSiebert: return "SCJO"
        case .elTuqui: return "SCOV"
        case .altoPalena: return "SCAP"
        case .capitanFuentesMartinez: return "SCFM"
        case .pucon: return "SCPC"
        case .caboJuanRoman: return "SCAS"
        case .elTepual: return "SCTE"
        case .tenienteJulioGallardo: return "SCNT"
        case .elMirador: return "SCPV"
        case .guardiamarinaZanartu: return "SCGZ"
        case .presidenteCarlosIbanezDelCampo: return "SCCI"
        case .rancaguaDeLaIndependencia: return "SCRG"
        case .victorLafon: return "SCSF"
        case .arturoMerinoBenitez: return "SCEL"
        case .elBosque: return "SCBQ"
        case .panguilemo: return "SCTL"
        case .lasBreas: return "SCTT"
        case .temucoMaquehue: return "SCTC"
        case .laAraucania: return "SCQP"
        case .barriles: return "SCBE"
        case .pichoy: return "SCVD"
        case .vallenar: return "SCLL"
        case .victoria: return "SCTO"
        case .vinaDelMar: return "SCVM"
        case .rodelillo: return "SCRD"
        case .chuquicamata: return "SCKU"
        }
    }
    
    public var websiteURL : String? { // TODO: add
        return nil
    }
}
