//
//  Solution.swift
//  PlayGround
//
//  Created by Afsal on 31/10/2024.
//

import Foundation

class Solution {
    
    func sumOfSequence(_ arr: [Int]) -> Int {
        return arr.reduce(0, +)
    }
    
    func productOfSequence(_ arr: [Int]) -> Int {
        return arr.reduce(1, *)
    }
    
    func getRepetitiveItems(_ string: String) -> String {
        
        var dict = [String: Int]()
        
        _ = Array(string.lowercased()).map {
            dict[String($0), default: 0] += 1
        }
        
        return dict.filter { $0.value > 1 }.map { $0.key }.sorted().joined()
    }
    
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
    
    func isPalindrome(_ str: String) -> Bool {
        return str.lowercased() == String(str.lowercased().reversed())
    }
    
    func sameCharacters(with str1: String, and str2: String) -> Bool {
        return str1.sorted() == str2.sorted()
    }
    
    func containsWord(_ string: String, in sentence: String) -> Bool {
        return sentence.containsWord(string)
    }
    
    func countCharacter(input: String, count: Character) -> Int {
        return input.reduce(0) {
            $1 == count ? $0 + 1 : $0
        }
    }
    
    func countCharacterUsingFilter(input: String, count: Character) -> Int {
        return Array(input).filter { $0 == count }.count
    }
    
    func countCharacterByRemoving(input: String, count: String) -> Int {
        let modified = input.replacingOccurrences(of: count, with: "")
        return input.count - modified.count
    }
    
    func removeDuplicatesUsingNSOrderedSet(from string: String) -> String {
        let array = string.map { String($0) }
        let set = NSOrderedSet(array: array)
        let letters = Array(set) as! Array<String>
        return letters.joined()
    }
    
    func removeDuplicatesByLooping(from string: String) -> String {
        var used = [Character]()
        for letter in string {
            if !used.contains(letter) {
                used.append(letter)
            }
        }
        
        return String(used)
    }
    
    func removeDuplicatesByFilter(from string: String) -> String {
        var used = [Character: Bool]()
        
        let result = string.filter {
            used.updateValue(true, forKey: $0) == nil
        }
        
        return result
    }
}

extension String {
    func containsWord(_ string: String) -> Bool {
        self.range(of: string, options: .caseInsensitive) != nil
    }
}
