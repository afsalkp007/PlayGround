//
//  Solution.swift
//  PlayGround
//
//  Created by Afsal on 31/10/2024.
//

import Foundation

class Solution {
    
    func challenge1a(_ str: String) -> Bool {
        return Set(str).count == str.count
    }
    
    func challenge1b(_ str: String) -> String {
        var dict = [String: Int]()
        
        _ = Array(str.lowercased()).map { char in
            dict[String(char), default: 0] += 1
        }
        
        let string = dict.filter { $0.value == 1 }.map { $0.key }.sorted().joined()
        
        return string
    }

    func challenge2(_ str: String) -> Bool {
        return str.lowercased() == String(str.lowercased().reversed())
    }
    
    func challenge3(with str1: String, and str2: String) -> Bool {
        return str1.sorted() == str2.sorted()
    }
    

    func challenge4(_ string: String, in sentence: String) -> Bool {
        return sentence.containsWord(string)
    }

    func challenge5a(input: String, count: Character) -> Int {
        return input.reduce(0) {
            $1 == count ? $0 + 1 : $0
        }
    }
    
    func challenge5b(input: String, count: Character) -> Int {
        return Array(input).filter { $0 == count }.count
    }
    
    func challenge5c(input: String, count: String) -> Int {
        let modified = input.replacingOccurrences(of: count, with: "")
        return input.count - modified.count
    }
    

    func challenge6a(from string: String) -> String {
        let array = string.map { String($0) }
        let set = NSOrderedSet(array: array)
        let letters = Array(set) as! Array<String>
        return letters.joined()
    }
    
    func challenge6b(from string: String) -> String {
        var used = [Character]()
        for letter in string {
            if !used.contains(letter) {
                used.append(letter)
            }
        }
        
        return String(used)
    }
    
    func challenge6c(from string: String) -> String {
        var used = [Character: Bool]()
        
        let result = string.filter {
            used.updateValue(true, forKey: $0) == nil
        }
        
        return result
    }
    
    func challenge7a(input: String) -> String {
        let components = input.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }.joined(separator: " ")
    }
    
    func challenge7b(input: String) -> String {
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
    
    func challenge7c(input: String) -> String {
        return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
    }
    
    func challenge8(input: String, rotated: String) -> Bool {
        guard input.count == rotated.count else { return false }
        let combined = input + input
        return combined.contains(rotated)
    }
    
    func challenge9(input: String) -> Bool {
        let set = Set(input.lowercased())
        let letters = set.filter { $0 >= "a" && $0 <= "z" }
        return letters.count == 26
    }
    
    func challenge10a(input: String) -> (vowels: Int, consonants: Int) {
        let vowels = CharacterSet(charactersIn: "aeiou")
        let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
        
        var vowelsCount = 0
        var consonantsCount = 0
        
        for letter in input.lowercased() {
            let stringLetter = String(letter)
            
            if stringLetter.rangeOfCharacter(from: vowels) != nil {
                vowelsCount += 1
            } else if stringLetter.rangeOfCharacter(from: consonants) != nil {
                consonantsCount += 1
            }
        }
        
        return (vowelsCount, consonantsCount)
    }
    
    func challenge10b(input: String) -> (vowels: Int, consonants: Int) {
        let vowels = "aeiou"
        let consonants = "bcdfghjklmnpqrstvwxyz"
        
        var vowelsCount = 0
        var consonantsCount = 0
        
        for letter in input.lowercased() {
            let stringLetter = String(letter)
            
            if vowels.contains(stringLetter) {
                vowelsCount += 1
            } else if consonants.contains(stringLetter) {
                consonantsCount += 1
            }
        }
        
        return (vowelsCount, consonantsCount)
    }
    
    func challenge10c(input: String) -> (vowels: Int, consonants: Int) {
        let vowels = "aeiou"
        let consonants = "bcdfghjklmnpqrstvwxyz"
        
        var vowelsCount = 0
        var consonantsCount = 0
        
        for letter in input.lowercased() {
            if vowels.contains(letter) {
                vowelsCount += 1
            } else if consonants.contains(letter) {
                consonantsCount += 1
            }
        }
        
        return (vowelsCount, consonantsCount)
    }
    
    func challenge11(first: String, second: String) -> Bool {
        guard first.count == second.count else { return false }
        
        let firstArray = Array(first)
        let secondArray = Array(second)
        var difference = 0
        
        for (index, letter) in firstArray.enumerated() {
            if secondArray[index] != letter {
                difference += 1
                
                if difference == 4 {
                    return false
                }
            }
        }
        
        return true
    }
    
    func challenge12(input: String) -> String {
        let parts = input.components(separatedBy: " ")
        guard let first = parts.first else { return "" }
        
        var currentPrefix = ""
        var bestPrefix = ""
        
        for letter in first {
            currentPrefix.append(letter)
            
            for word in parts {
                if !word.hasPrefix(currentPrefix) {
                    return bestPrefix
                }
            }
            
            bestPrefix = currentPrefix
        }
        
        return bestPrefix
    }
    
    func challenge13a(input: String) -> String {
        var currentLetter: Character?
        var returnValue = ""
        var letterCounter = 0
        
        for letter in input {
            if letter == currentLetter {
                letterCounter += 1
            } else {
                if let current = currentLetter {
                    returnValue.append("\(current)\(letterCounter)")
                }
                currentLetter = letter
                letterCounter = 1
            }
        }
        
        if let current = currentLetter {
            returnValue.append("\(current)\(letterCounter)")
        }
        
        return returnValue
    }
    
    func challenge13b(input: String) -> String {
        var returnValue = ""
        var letterCounter = 0
        let letterArray = Array(input)
        
        for i in 0..<letterArray.count {
            letterCounter += 1
            
            if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
                returnValue += "\(letterArray[i])\(letterCounter)"
                letterCounter = 0
            }
        }
        
        return returnValue
    }
    
    func challenge14(input: String, current: String = "") -> [String] {
        var result = [String]()
        let length = input.count
        let strArray = Array(input)
        
        if length == 0 {
            result.append(current)
        } else {
            for i in 0..<length {
                let left = String(strArray[0..<i])
                let right = String(strArray[i+1..<length])
                result += challenge14(input: left + right, current: current + String(strArray[i]))
            }
        }
        
        return result
    }
    
    func challenge15(input: String) -> String {
        let parts = input.components(separatedBy: " ")
        let reversed = parts.map { String($0.reversed()) }
        return reversed.joined(separator: " ")
    }
    
    func challenge16a(input: Int) -> String {
        if input % 3 == 0 && input % 5 == 0 {
            return "FizzBuzz"
        } else if input % 3 == 0 {
            return "Fizz"
        } else if input % 5 == 0 {
            return "Buzz"
        } else {
            return "\(input)"
        }
    }
    
    func challenge16b(input: Int) -> String {
        if input % 3 == 0 {
            if  input % 5 == 0 {
                return "FizzBuzz"
            } else {
                return "Fizz"
            }
        } else if input % 5 == 0 {
            return "Buzz"
        } else {
            return "\(input)"
        }
    }
    
    func challenge16c(input: Int) -> String {
        return (input % 3 == 0 ? input % 5 == 0 ? "FizzBuzz" : "Fizz" : input % 5 == 0 ? "Buzz" : "\(input)")
    }
    
    func challenge17a(min: Int, max: Int) -> Int {
        return Int.random(in: min...max)
    }
    
    func challenge17b(min: Int, max: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max - min + 1))) + min
    }
    
    func challenge18a(num: Int, power: Int) -> Int {
        guard num > 0, power > 0 else { return 0 }
        
        var res = num
        for _ in 1..<power {
            res *= num
        }
        return res
    }
    
    func challenge18b(num: Int, power: Int) -> Int {
        guard num > 0, power > 0 else { return 0 }
        
        if power == 1 { return num }
        
        return num * challenge18b(num: num, power: power - 1)
    }
    
    func challenge19a(a: inout Int, b: inout Int) -> (a: Int, b: Int) {
        a = a + b
        b = a - b
        a = a - b
        
        return (a, b)
    }
    
    func challenge19b(a: inout Int, b: inout Int) -> (a: Int, b: Int) {
        a = a ^ b
        b = a ^ b
        a = a ^ b
        
        return (a, b)
    }
}

extension String {
    func containsWord(_ string: String) -> Bool {
        self.range(of: string, options: .caseInsensitive) != nil
    }
}
