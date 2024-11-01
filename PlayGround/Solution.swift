//
//  Solution.swift
//  PlayGround
//
//  Created by Afsal on 31/10/2024.
//

import Foundation

class Solution {
    
    // MARK: - Sum of a Sequence
    func sumOfSequence(_ arr: [Int]) -> Int {
        return arr.reduce(0, +)
    }
    
    // MARK: - Product of a Sequence
    func productOfSequence(_ arr: [Int]) -> Int {
        return arr.reduce(1, *)
    }
    
    // MARK: - Get recurring items
    func getRepetitiveItems(_ string: String) -> String {
        
        var dict = [String: Int]()
        
        _ = Array(string.lowercased()).map {
            dict[String($0), default: 0] += 1
        }
        
        return dict.filter { $0.value > 1 }.map { $0.key }.sorted().joined()
    }
    
    // MARK: - Get uniqueue items
    func isUniqueItems(_ str: String) -> Bool {
        return Set(str).count == str.count
    }
    
    func getUniqueItems(_ str: String) -> String {
        
        var dict = [String: Int]()
        
        _ = Array(str.lowercased()).map { char in
            dict[String(char), default: 0] += 1
        }
        
        let string = dict.filter { $0.value == 1 }.map { $0.key }.sorted().joined()
        
        return string
    }
    
    // MARK: - Is Palindrome?
    func isPalindrome(_ str: String) -> Bool {
        return str.lowercased() == String(str.lowercased().reversed())
    }
    
    // MARK: - Is same characters in two strings?
    func sameCharacters(with str1: String, and str2: String) -> Bool {
        return str1.sorted() == str2.sorted()
    }
    
    // MARK: - Whether a sentence contains a particular word?
    func containsWord(_ string: String, in sentence: String) -> Bool {
        return sentence.containsWord(string)
    }
    
    // MARK: - Get a particular character count in a given String
    func countCharacter(input: String, count: Character) -> Int {
        return input.reduce(0) {
            $1 == count ? $0 + 1 : $0
        }
    }
    
    // MARK: - Count character using Filter
    func countCharacterUsingFilter(input: String, count: Character) -> Int {
        return Array(input).filter { $0 == count }.count
    }
    
    // MARK: - Count character by removing
    func countCharacterByRemoving(input: String, count: String) -> Int {
        let modified = input.replacingOccurrences(of: count, with: "")
        return input.count - modified.count
    }
    
    // MARK: - Remove duplicates using NSOrderedSet
    func removeDuplicatesUsingNSOrderedSet(from string: String) -> String {
        let array = string.map { String($0) }
        let set = NSOrderedSet(array: array)
        let letters = Array(set) as! Array<String>
        return letters.joined()
    }
    
    // MARK: - Remove duplicates by Looping
    func removeDuplicatesByLooping(from string: String) -> String {
        var used = [Character]()
        for letter in string {
            if !used.contains(letter) {
                used.append(letter)
            }
        }
        
        return String(used)
    }
    
    // MARK: - Remove duplicates by Filtering
    func removeDuplicatesByFilter(from string: String) -> String {
        var used = [Character: Bool]()
        
        let result = string.filter {
            used.updateValue(true, forKey: $0) == nil
        }
        
        return result
    }
    
    // MARK: - Remove adjacent spaces in between
    
    func removeAdjacentSpaces(input: String) -> String {
        let components = input.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }.joined(separator: " ")
    }
    
    // MARK: - Retain single space in consecutive spaces even leading and trailing
    func retainSingleSpace(input: String) -> String {
        var seenSpace = false
        var returnValue = ""
        
        for letter in input {
            if letter == " " {
                if seenSpace == true { continue }
                seenSpace = true
            } else {
                seenSpace = false
            }
            
            returnValue.append(letter)
        }
        
        return returnValue
    }
    
    // MARK: - Retain single space using Regular expressions
    func singleSpaceByRegEx(input: String) -> String {
        return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
    }
    
    func rotateString(input: String, rotated: String) -> Bool {
        guard input.count == rotated.count else { return false }
        let combined = input + input
        return combined.contains(rotated)
    }
}

extension String {
    func containsWord(_ string: String) -> Bool {
        self.range(of: string, options: .caseInsensitive) != nil
    }
}
