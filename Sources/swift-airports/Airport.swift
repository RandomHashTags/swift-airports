//
//  Airport.swift
//
//
//  Created by Evan Anderson on 11/22/23.
//

import Foundation
import SwiftSovereignStates

public protocol Airport : CaseIterable, RawRepresentable where RawValue == String {
    associatedtype SubdivisionLevel1Type : SovereignStateSubdivision
    
    var country : Country { get }
    var subdivisionLevel1 : SubdivisionLevel1Type { get }
    //var citiesServed : [any SovereignStateCity] { get }
    
    func name(forLocale locale: Locale) -> String
    func aliases(forLocale locale: Locale) -> Set<String>?
    
    func keywords(forLocale locale: Locale) -> Set<String>
    func keywordsAdditional(forLocale locale: Locale) -> Set<String>?
    
    /// Whether this Airport is mentioned or not in the `string`.
    func isMentioned(in string: String, options: String.CompareOptions, locale: Locale) -> Bool
    
    /// The airport code assigned by the International Air Transport Association (IATA).
    var iata : String { get }
    /// The location indicator assigned by the International Civil Aviation Organization (ICAO).
    var icao : String { get }
    
    var websiteURL : String? { get }
}

public extension Airport {
    func name(forLocale locale: Locale) -> String {
        return rawValue + " Airport" // TODO: fix
    }
    
    func aliases(forLocale locale: Locale) -> Set<String>? {
        return nil
    }
    
    func keywords(forLocale locale: Locale) -> Set<String> {
        var set:Set<String> = [name(forLocale: locale), iata, icao]
        if let aliases:Set<String> = aliases(forLocale: locale) {
            set.formUnion(aliases)
        }
        if let additional:Set<String> = keywordsAdditional(forLocale: locale) {
            set.formUnion(additional)
        }
        return set
    }
    
    func keywordsAdditional(forLocale locale: Locale) -> Set<String>? {
        return nil
    }
    
    func isMentioned(in string: String, options: String.CompareOptions, locale: Locale) -> Bool {
        let keywords:Set<String> = keywords(forLocale: locale)
        let start_index:String.Index = string.startIndex, end_index:String.Index = string.endIndex
        for keyword in keywords {
            let keyword:String = keyword.folding(options: options, locale: locale)
            if Airports.doesSatisfy(string_start_index: start_index, string_end_index: end_index, string: string, value: keyword) {
                return true
            }
        }
        return false
    }
}

extension String {
    func isMentioned(_ value: String) -> Bool {
        let value_count:Int = value.count, value_count_minus_one:Int = value_count-1
        let value_start_index:String.Index = value.startIndex
        let first:Character = value[value_start_index]
        let start_index:String.Index = startIndex, end_index:String.Index = index(before: endIndex)
        
        var i:Int = 0
        while i < count {
            if self[index(start_index, offsetBy: i)] == first {
                var equal:Bool = true
                inner_loop : for j in 1...value_count_minus_one {
                    if let next_index:String.Index = index(start_index, offsetBy: i + j, limitedBy: end_index) {
                        if self[next_index] != value[value.index(value_start_index, offsetBy: j)] {
                            i += j
                            equal = false
                            break inner_loop
                        }
                    } else {
                        i += j
                        equal = false
                        break inner_loop
                    }
                }
                if equal {
                    let next_index:String.Index? = self.index(start_index, offsetBy: i + value_count, limitedBy: end_index)
                    return next_index == nil || !self[next_index!].isLetter
                }
            } else {
                i += 1
            }
        }
        return false
    }
}
