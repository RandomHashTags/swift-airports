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

public extension String {
    func containsSIMD(_ value: String) -> Bool {
        let parent_count:Int = self.count, child_count:Int = value.count
        
        let simd_width:Int = 64
        
        let parent_bytes:[UInt16] = [UInt16](self.utf16)
        let parent_bytes_count:Int = parent_bytes.count
        let child_bytes:[UInt16] = [UInt16](value.utf16)
        let child_bytes_count:Int = child_bytes.count
        
        let parent_blocks_count:Int = (parent_count / simd_width)+1
        var parent_blocks:[SIMD64<UInt16>] = [SIMD64<UInt16>].init(repeating: SIMD64<UInt16>(), count: parent_blocks_count)
        for index in 0..<parent_blocks_count {
            let starting_index:Int = index * simd_width
            for i in 0..<min(parent_bytes_count - starting_index, simd_width) {
                parent_blocks[index][i] = parent_bytes[starting_index + i]
            }
        }
        let child_blocks_count:Int = (child_count / simd_width)+1
        var child_blocks:[SIMD64<UInt16>] = [SIMD64<UInt16>].init(repeating: SIMD64<UInt16>(), count: child_blocks_count)
        child_blocks.reserveCapacity(child_blocks_count)
        for index in 0..<child_blocks_count {
            let starting_index:Int = index * simd_width
            for i in 0..<min(child_bytes_count - starting_index, simd_width) {
                child_blocks[index][i] = child_bytes[starting_index + i]
            }
        }
        
        var entryLength:Int = child_count
        var offset:Int = 0
        for parent_block in parent_blocks {
            for child_block in child_blocks {
                switch parent_block.contains(entry: child_block, entryLength: entryLength, offset: offset) {
                case .success:
                    return true
                case .failed:
                    return false
                case .successNibble(let characters_found):
                    entryLength -= characters_found
                    offset += characters_found
                    break
                }
            }
        }
        return false
    }
    func containsSIMD2(_ value: String) -> Bool {
        let parent_count:Int = self.count, child_count:Int = value.count
        
        let simd_width:Int = 64
        
        let parent_bytes:[UInt16] = [UInt16](self.utf16)
        let parent_bytes_count:Int = parent_bytes.count
        let child_bytes:[UInt16] = [UInt16](value.utf16)
        let child_bytes_count:Int = child_bytes.count
        
        let parent_blocks_count:Int = (parent_count / simd_width)+1
        var parent_blocks:[SIMD64<UInt16>] = [SIMD64<UInt16>].init(repeating: SIMD64<UInt16>(), count: parent_blocks_count)
        for index in 0..<parent_blocks_count {
            let starting_index:Int = index * simd_width
            let characters_for_block:Int = min(parent_bytes_count - starting_index, simd_width)
            for i in 0..<characters_for_block {
                parent_blocks[index][i] = parent_bytes[starting_index + i]
            }
            //print("containsSIMD2;parent_blocks;index=\(index);starting_index=\(starting_index);characters_for_block=\(characters_for_block)")
        }
        let child_blocks_count:Int = (child_count / simd_width)+1
        var child_blocks:[SIMD64<UInt16>] = [SIMD64<UInt16>].init(repeating: SIMD64<UInt16>(), count: child_blocks_count)
        child_blocks.reserveCapacity(child_blocks_count)
        for index in 0..<child_blocks_count {
            let starting_index:Int = index * simd_width
            let characters_for_block:Int = min(child_bytes_count - starting_index, simd_width)
            let filled:Int = (simd_width - characters_for_block) / child_count
            for i in 0..<characters_for_block {
                let byte:UInt16 = child_bytes[starting_index + i]
                child_blocks[index][i] = byte
                
                for j in 1...filled {
                    child_blocks[index][i + (j * child_count)] = byte
                }
            }
            //print("containsSIMD2;child_blocks;index=\(index);starting_index=\(starting_index);characters_for_block=\(characters_for_block);filled=\(filled)")
        }
        
        var entryLength:Int = child_count
        var offset:Int = 0
        for parent_block in parent_blocks {
            for child_block in child_blocks {
                switch parent_block.contains2(entry: child_block, entryLength: entryLength, offset: offset) {
                case .success:
                    return true
                case .failed:
                    return false
                case .successNibble(let characters_found):
                    entryLength -= characters_found
                    offset += characters_found
                    break
                }
            }
        }
        return false
    }
}
extension SIMD {
    static func >> (left: Self, _ shift: Int) -> Self {
        var value:Self = Self()
        for i in 0..<left.indices.count {
            value[i] = left[shift + i]
        }
        return value
    }
    
    func count(where transform: (Scalar) -> Bool) -> Int {
        var amount:Int = 0
        for i in indices {
            if transform(self[i]) {
                amount += 1
            }
        }
        return amount
    }
    func containsConsecutive(where transform: (Scalar) -> Bool, amount: Int) -> Bool {
        for i in indices {
            if transform(self[i]) {
                inner_loop : for test in 1..<amount {
                    if !transform(self[i + test]) {
                        break inner_loop
                    }
                    return true
                }
            }
        }
        return false
    }
}
extension SIMD where Scalar: FixedWidthInteger {
    static func << (left: Self, _ shift: Int) -> Self {
        var value:Self = Self()
        let max_index:Int = left.indices.count
        for i in 0..<max_index {
            let target_index:Int = shift + i
            value[i] = target_index < max_index ? left[target_index] : 0
        }
        return value
    }
    
    func contains2(entry: Self, entryLength: Int, offset: Int) -> SIMDCompareResult {
        let self_zeroes:SIMDMask<MaskStorage> = self .== Self.zero
        let entry_zeroes:SIMDMask<MaskStorage> = entry .== Self.zero
        for i in 0..<entryLength {
            var result:SIMDMask<MaskStorage> = i == 0 ? self .== entry : self .== (entry << i)
            for i in result.indices {
                if self_zeroes[i] && entry_zeroes[i] {
                    result[i] = false
                }
            }
            //print("contains2;i=\(i);result=\(result)")
            if result.containsConsecutive(where: { $0 }, amount: entryLength) {
                return SIMDCompareResult.success
            }
        }
        return SIMDCompareResult.failed
    }
    func contains(entry: Self, entryLength: Int, offset: Int) -> SIMDCompareResult {
        var i:Int = 0
        let max_index:Int = self.indices.count
        let length_range:Range<Int> = 1..<entryLength
        let first:Scalar = entry[offset]
        while i < max_index {
            if self[i] == first {
                var bruh:Int = 1
                for j in length_range {
                    let target_index:Int = i + j
                    if target_index < max_index {
                        if self[target_index] == entry[offset + j] {
                            bruh += 1
                        }
                    } else {
                        return SIMDCompareResult.successNibble(index: bruh)
                    }
                }
                if bruh == entryLength {
                    return SIMDCompareResult.success
                }
                i += entryLength
            } else {
                i += 1
            }
        }
        return SIMDCompareResult.failed
    }
}
enum SIMDCompareResult : Hashable {
    case success
    case successNibble(index: Int)
    case failed
}
