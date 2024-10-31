//
//  Solution.swift
//  PlayGround
//
//  Created by Afsal on 31/10/2024.
//

import Foundation

class Solution {
    
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
}

extension String {
    func containsWord(_ string: String) -> Bool {
        self.range(of: string, options: .caseInsensitive) != nil
    }
}
