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
    
    var website : String? { get }
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
    
    func isMentioned(in string: String, options: String.CompareOptions, locale: Locale) -> Bool {
        let keywords:Set<String> = keywords(forLocale: locale)
        for keyword in keywords {
            let keyword:String = keyword.folding(options: options, locale: locale)
            if string.containsSIMD(keyword) {
                return true
            }
        }
        return false
    }
}

extension String {
    func containsSIMD(_ string2: String) -> Bool {
        let string1_count:Int = self.count, string2_count:Int = string2.count
        
        let string1_bytes:[UInt16] = [UInt16](self.utf16)
        let string2_bytes:[UInt16] = [UInt16](string2.utf16)
        
        var simd1:SIMD64<UInt16> = SIMD64<UInt16>()
        for i in 0..<string1_count {
            simd1[i] = string1_bytes[i]
        }
        
        var simd2:SIMD64<UInt16> = SIMD64<UInt16>()
        for i in 0..<string2_count {
            let byte:UInt16 = string2_bytes[i]
            simd2[i] = byte
        }
        return simd1.contains(entry: simd2, entryLength: string2_count)
    }
}
extension SIMD {
    func contains(entry: Self, entryLength: Int) -> Bool {
        var i:Int = 0
        let max_index:Int = self.indices.count
        let length_range:Range<Int> = 1..<entryLength
        let entry_length:Int = entryLength-1
        let first:Scalar = entry[0]
        while i < max_index {
            if self[i] == first {
                let bruh:Int = length_range.reduce(0) { (result, index) in
                    let target_index:Int = i + index
                    return result + (target_index < max_index && self[target_index] == entry[index] ? 1 : 0)
                }
                if bruh == entry_length {
                    return true
                }
                i += entryLength
            } else {
                i += 1
            }
        }
        return false
    }
}
