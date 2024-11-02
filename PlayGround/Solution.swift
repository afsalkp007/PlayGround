//
//  Solution.swift
//  PlayGround
//
//  Created by Afsal on 31/10/2024.
//

import Foundation

class Solution {
    
    // MARK: - Challenge 1: Are the letters unique?
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
    
    // MARK: - Challenge 2: Is a string a palindrome?
    func isPalindrome(_ str: String) -> Bool {
        return str.lowercased() == String(str.lowercased().reversed())
    }
    
    // MARK: - Challenge 3: Do two strings contain the same characters?
    func sameCharacters(with str1: String, and str2: String) -> Bool {
        return str1.sorted() == str2.sorted()
    }
    
    // MARK: - Challenge 4: Does one string contain another?
    func containsWord(_ string: String, in sentence: String) -> Bool {
        return sentence.containsWord(string)
    }
    
    // MARK: - Challenge 5: Count the characters
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
    
    // MARK: - Challenge 6: Remove duplicate letters from a string
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
    
    // MARK: - Challenge 7: Condense whitespace
    func removeAdjacentSpaces(input: String) -> String {
        let components = input.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }.joined(separator: " ")
    }
    
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
    
    func singleSpaceByRegEx(input: String) -> String {
        return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
    }
    
    // MARK: - Challenge 8: String is rotated
    func rotateString(input: String, rotated: String) -> Bool {
        guard input.count == rotated.count else { return false }
        let combined = input + input
        return combined.contains(rotated)
    }
    
    // MARK: - Challenge 9: Find pangrams
    func isPangrams(input: String) -> Bool {
        let set = Set(input.lowercased())
        let letters = set.filter { $0 >= "a" && $0 <= "z" }
        return letters.count == 26
    }
}

extension String {
    func containsWord(_ string: String) -> Bool {
        self.range(of: string, options: .caseInsensitive) != nil
    }
}
