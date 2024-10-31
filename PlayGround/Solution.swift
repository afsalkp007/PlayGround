//
//  Solution.swift
//  PlayGround
//
//  Created by Afsal on 31/10/2024.
//

import Foundation

class Solution {
    
    func repetitiveItems(_ string: String) -> String {
        
        var dict = [String: Int]()
        
        _ = Array(string).map {
            dict[String($0), default: 0] += 1
        }
        
        return dict
            .filter { $0.value > 1 }
            .map { $0.key }
            .sorted()
            .joined()
    }
    
    func uniqueItems(_ str: String) -> Bool {
        return Set(str).count == str.count
    }
    
    func uniqueItemsString(_ str: String) -> String {
        
        var dict = [String: Int]()
        
        _ = Array(str).map { char in
            dict[String(char), default: 0] += 1
        }
        
        let string = dict
            .filter { $0.value == 1 }
            .map { $0.key }
            .sorted()
            .joined()
        
        return string
    }
    
    func isPalindrome(_ str: String) -> Bool {
        return Array(str) == Array(str.reversed())
    }
}
