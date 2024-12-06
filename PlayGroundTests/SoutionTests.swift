//
//  SoutionTests.swift
//  PlayGroundTests
//
//  Created by Afsal on 31/10/2024.
//

import XCTest
@testable import PlayGround

class SoutionTests: XCTestCase {
    
    // MARK: - Challenge 1: Are the letters unique?
    func test_isUniqueItems_returnTrue() {
        let result = makeSUT().challenge1a("No duplicates")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().challenge1a("abcdefghijklmnopqrstuvwxyz")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().challenge1a("AaBbCc")
        XCTAssertTrue(result3)
        
        let result4 = makeSUT().challenge1a("Hello, world")
        XCTAssertFalse(result4)
    }
    
    func test_uniqueItemsString_returnUniqueItems() {
        let result = makeSUT().challenge1b("Aaaabbbcessaabrrnnnq")
        XCTAssertEqual(result, "ceq")
    }
    
    // MARK: - Challenge 2: Is a string a palindrome?
    func test_isPalindrome_returnTrue() {
        let result = makeSUT().challenge2("rotator")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().challenge2("Rats live on no evil star")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().challenge2("Never odd or even")
        XCTAssertFalse(result3)
        
        let result4 = makeSUT().challenge2("Hello, world")
        XCTAssertFalse(result4)
    }
    
    // MARK: - Challenge 3: Do two strings contain the same characters?
    func test_sameCharacters_returnTrue() {
        let result = makeSUT().challenge3(with: "abca", and: "abca")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().challenge3(with: "abc", and: "cba")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().challenge3(with: "a1 b2", and: "b1 a2")
        XCTAssertTrue(result3)
        
        let result4 = makeSUT().challenge3(with: "abc", and: "abca")
        XCTAssertFalse(result4)
        
        let result5 = makeSUT().challenge3(with: "abc", and: "Abc")
        XCTAssertFalse(result5)
        
        let result6 = makeSUT().challenge3(with: "abc", and: "cbAa")
        XCTAssertFalse(result6)
        
        let result7 = makeSUT().challenge3(with: "abcc", and: "abca")
        XCTAssertFalse(result7)
    }
    
    // MARK: - Challenge 4: Does one string contain another?
    func test_containsWord_returnsBoolean() {
        let result = makeSUT().challenge4("Hello", in: "Hello, world")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().challenge4("WORLD", in: "Hello, world")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().challenge4("Goodbye", in: "Hello, world")
        XCTAssertFalse(result3)
    }
    
    // MARK: - Challenge 5: Count the characters
    func test_countCharacter_returnsTheCount() {
        let result = makeSUT().challenge5a(input: "The rain in Spain", count: "a")
        XCTAssertEqual(result, 2)
        
        let result2 = makeSUT().challenge5a(input: "Mississippi", count: "i")
        XCTAssertEqual(result2, 4)
        
        let result3 = makeSUT().challenge5a(input: "Hacking with Swift", count: "i")
        XCTAssertEqual(result3, 3)
    }
        
    func test_countCharacterUsingFilter_returnsTheCount() {
        let result = makeSUT().challenge5b(input: "The rain in Spain", count: "a")
        XCTAssertEqual(result, 2)
        
        let result2 = makeSUT().challenge5b(input: "Mississippi", count: "i")
        XCTAssertEqual(result2, 4)
        
        let result3 = makeSUT().challenge5b(input: "Hacking with Swift", count: "i")
        XCTAssertEqual(result3, 3)
    }
        
    func test_countCharacterByRemoving_returnsTheCount() {
        let result = makeSUT().challenge5c(input: "The rain in Spain", count: "a")
        XCTAssertEqual(result, 2)
        
        let result2 = makeSUT().challenge5c(input: "Mississippi", count: "i")
        XCTAssertEqual(result2, 4)
        
        let result3 = makeSUT().challenge5c(input: "Hacking with Swift", count: "i")
        XCTAssertEqual(result3, 3)
    }
        
    // MARK: - Challenge 6: Remove duplicate letters from a string
    func test_removeDuplicatesUsingNSOrderedSet_givesString() {
        let result = makeSUT().challenge6a(from: "wombat")
        XCTAssertEqual(result, "wombat")
        
        let result2 = makeSUT().challenge6a(from: "hello")
        XCTAssertEqual(result2, "helo")
        
        let result3 = makeSUT().challenge6a(from: "Mississippi")
        XCTAssertEqual(result3, "Misp")
    }
    
    func test_removeDuplicatesByLooping_givesString() {
        let result = makeSUT().challenge6b(from: "wombat")
        XCTAssertEqual(result, "wombat")
        
        let result2 = makeSUT().challenge6b(from: "hello")
        XCTAssertEqual(result2, "helo")
        
        let result3 = makeSUT().challenge6b(from: "Mississippi")
        XCTAssertEqual(result3, "Misp")
    }
    
    func test_removeDuplicatesByFilter_givesString() {
        let result = makeSUT().challenge6c(from: "wombat")
        XCTAssertEqual(result, "wombat")
        
        let result2 = makeSUT().challenge6c(from: "hello")
        XCTAssertEqual(result2, "helo")
        
        let result3 = makeSUT().challenge6c(from: "Mississippi")
        XCTAssertEqual(result3, "Misp")
    }
    
    // MARK: - Challenge 7: Condense whitespace
    func test_removeAdjacentSpaces_returnValue() {
        let result = makeSUT().challenge7a(input: "a   b   c")
        XCTAssertEqual(result, "a b c")
        
        let result2 = makeSUT().challenge7a(input: "    a")
        XCTAssertEqual(result2, "a")
        
        let result3 = makeSUT().challenge7a(input: " abc ")
        XCTAssertEqual(result3, "abc")
    }
    
    func test_retainSingleSpace_returnValue() {
        let result = makeSUT().challenge7b(input: "a   b   c")
        XCTAssertEqual(result, "a b c")
        
        let result2 = makeSUT().challenge7b(input: "    a")
        XCTAssertEqual(result2, " a")
        
        let result3 = makeSUT().challenge7b(input: "abc")
        XCTAssertEqual(result3, "abc")
    }
    
    func test_singleSpaceByRegEx_returnValue() {
        let result = makeSUT().challenge7c(input: "a   b   c")
        XCTAssertEqual(result, "a b c")
        
        let result2 = makeSUT().challenge7c(input: "    a")
        XCTAssertEqual(result2, " a")
        
        let result3 = makeSUT().challenge7c(input: "abc")
        XCTAssertEqual(result3, "abc")
    }
    
    // MARK: - Challenge 8: String is rotated
    func test_rotateString_givesRotated() {
        let result = makeSUT().challenge8(input: "abcde", rotated: "eabcd")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().challenge8(input: "abcde", rotated: "cdeab")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().challenge8(input: "abcde", rotated: "abced")
        XCTAssertFalse(result3)
        
        let result4 = makeSUT().challenge8(input: "abc", rotated: "a")
        XCTAssertFalse(result4)
    }
    
    // MARK: - Challenge 9: Find pangrams
    func test_isPangrams_returnBoolean() {
        let result = makeSUT().challenge9(input: "The quick brown fox jumps over the lazy dog")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().challenge9(input: "The quick brown fox jumped over the lazy dog")
        XCTAssertFalse(result2)
    }
    
    // MARK: - Challenge 10: Vowels and consonants
    
    func test_vowelsAndConsonantsWithCharacterSet_returnNumbers() {
        let result1 = makeSUT().challenge10a(input: "Swift Coding Challenges")
        XCTAssertEqual(result1.vowels, 6)
        XCTAssertEqual(result1.consonants, 15)
        
        let result2 = makeSUT().challenge10a(input: "Mississippi")
        XCTAssertEqual(result2.vowels, 4)
        XCTAssertEqual(result2.consonants, 7)
    }
    
    func test_vowelsAndConsonantsWithStringContains_returnNumbers() {
        let result1 = makeSUT().challenge10b(input: "Swift Coding Challenges")
        XCTAssertEqual(result1.vowels, 6)
        XCTAssertEqual(result1.consonants, 15)
        
        let result2 = makeSUT().challenge10b(input: "Mississippi")
        XCTAssertEqual(result2.vowels, 4)
        XCTAssertEqual(result2.consonants, 7)
    }
    
    func test_vowelsAndConsonantsWithCharacterContains_returnNumbers() {
        let result1 = makeSUT().challenge10c(input: "Swift Coding Challenges")
        XCTAssertEqual(result1.vowels, 6)
        XCTAssertEqual(result1.consonants, 15)
        
        let result2 = makeSUT().challenge10c(input: "Mississippi")
        XCTAssertEqual(result2.vowels, 4)
        XCTAssertEqual(result2.consonants, 7)
    }
    
    func test_challenge11_returnTrue() {
        let result1 = makeSUT().challenge11(first: "Clamp", second: "Cramp")
        XCTAssertEqual(result1, true)
        
        let result2 = makeSUT().challenge11(first: "Clamp", second: "Crams")
        XCTAssertEqual(result2, true)
        
        let result3 = makeSUT().challenge11(first: "Clamp", second: "Grams")
        XCTAssertEqual(result3, true)
        
        let result4 = makeSUT().challenge11(first: "Clamp", second: "Grans")
        XCTAssertEqual(result4, false)
        
        let result5 = makeSUT().challenge11(first: "Clamp", second: "Clam")
        XCTAssertEqual(result5, false)
        
        let result6 = makeSUT().challenge11(first: "clamp", second: "maple")
        XCTAssertEqual(result6, false)
    }
    
    func test_challenge12_getsLongestPrefix() {
        let result1 = makeSUT().challenge12(input: "swift switch swill swim")
        XCTAssertEqual(result1, "swi")
        
        let result2 = makeSUT().challenge12(input: "flip flap flop")
        XCTAssertEqual(result2, "fl")
    }
    
    func test_challenge13a_getsString() {
        let result1 = makeSUT().challenge13a(input: "aabbcc")
        XCTAssertEqual(result1, "a2b2c2")
        
        let result2 = makeSUT().challenge13a(input: "aaabaaabaaa")
        XCTAssertEqual(result2, "a3b1a3b1a3")
        
        let result3 = makeSUT().challenge13a(input: "aaAAaa")
        XCTAssertEqual(result3, "a2A2a2")
    }
    
    func test_challenge13b_getsString() {
        let result1 = makeSUT().challenge13b(input: "aabbcc")
        XCTAssertEqual(result1, "a2b2c2")
        
        let result2 = makeSUT().challenge13b(input: "aaabaaabaaa")
        XCTAssertEqual(result2, "a3b1a3b1a3")
        
        let result3 = makeSUT().challenge13b(input: "aaAAaa")
        XCTAssertEqual(result3, "a2A2a2")
    }
    
    func test_challenge14_getsArray() {
        let result1 = makeSUT().challenge14(input: "a")
        XCTAssertEqual(result1, ["a"])
        
        let result2 = makeSUT().challenge14(input: "ab")
        XCTAssertEqual(result2, ["ab", "ba"])
        
        let result3 = makeSUT().challenge14(input: "abc")
        XCTAssertEqual(result3, ["abc", "acb", "bac", "bca", "cab", "cba"])
    }
    
    func test_challenge15_reverseWords() {
        let result1 = makeSUT().challenge15(input: "Swift Coding Challenges")
        XCTAssertEqual(result1, "tfiwS gnidoC segnellahC")
        
        let result2 = makeSUT().challenge15(input: "The quick brown fox")
        XCTAssertEqual(result2, "ehT kciuq nworb xof")
    }
    
    func test_challenge16a_fizzBuzz() {
        let result1 = makeSUT().challenge16a(input: 1)
        XCTAssertEqual(result1, "1")
        
        let result2 = makeSUT().challenge16a(input: 2)
        XCTAssertEqual(result2, "2")
        
        let result3 = makeSUT().challenge16a(input: 3)
        XCTAssertEqual(result3, "Fizz")
        
        let result4 = makeSUT().challenge16a(input: 4)
        XCTAssertEqual(result4, "4")
        
        let result5 = makeSUT().challenge16a(input: 5)
        XCTAssertEqual(result5, "Buzz")
        
        let result6 = makeSUT().challenge16a(input: 15)
        XCTAssertEqual(result6, "FizzBuzz")
    }
    
    func test_challenge16b_fizzBuzz() {
        let result1 = makeSUT().challenge16b(input: 1)
        XCTAssertEqual(result1, "1")
        
        let result2 = makeSUT().challenge16b(input: 2)
        XCTAssertEqual(result2, "2")
        
        let result3 = makeSUT().challenge16b(input: 3)
        XCTAssertEqual(result3, "Fizz")
        
        let result4 = makeSUT().challenge16b(input: 4)
        XCTAssertEqual(result4, "4")
        
        let result5 = makeSUT().challenge16b(input: 5)
        XCTAssertEqual(result5, "Buzz")
        
        let result6 = makeSUT().challenge16b(input: 15)
        XCTAssertEqual(result6, "FizzBuzz")
    }
    
    func test_challenge16c_fizzBuzz() {
        let result1 = makeSUT().challenge16c(input: 1)
        XCTAssertEqual(result1, "1")
        
        let result2 = makeSUT().challenge16c(input: 2)
        XCTAssertEqual(result2, "2")
        
        let result3 = makeSUT().challenge16c(input: 3)
        XCTAssertEqual(result3, "Fizz")
        
        let result4 = makeSUT().challenge16c(input: 4)
        XCTAssertEqual(result4, "4")
        
        let result5 = makeSUT().challenge16c(input: 5)
        XCTAssertEqual(result5, "Buzz")
        
        let result6 = makeSUT().challenge16c(input: 15)
        XCTAssertEqual(result6, "FizzBuzz")
    }
    
    func test_challenge17a_randomn() {
        let result1 = makeSUT().challenge17a(min: 1, max: 10)
        XCTAssertFalse(result1 > 10)
        XCTAssertFalse(result1 < 1)
    }
    
    func test_challenge17b_randomn() {
        let result1 = makeSUT().challenge17b(min: 1, max: 10)
        XCTAssertFalse(result1 > 10)
        XCTAssertFalse(result1 < 1)
    }
    
    func test_challenge18a_randomn() {
        let result1 = makeSUT().challenge18a(num: 4, power: 3)
        XCTAssertEqual(result1, 64)
        
        let result2 = makeSUT().challenge18a(num: 2, power: 8)
        XCTAssertEqual(result2, 256)
    }
    
    func test_challenge18b_randomn() {
        let result1 = makeSUT().challenge18b(num: 4, power: 3)
        XCTAssertEqual(result1, 64)
        
        let result2 = makeSUT().challenge18b(num: 2, power: 8)
        XCTAssertEqual(result2, 256)
    }
    
    func test_challenge19a_randomn() {
        var a = 2, b = 3
        let result1 = makeSUT().challenge19a(a: &a, b: &b)
        XCTAssertEqual(result1.a, 3)
        XCTAssertEqual(result1.b, 2)
    }
    
    func test_challenge19b_randomn() {
        var a = 2, b = 3
        let result1 = makeSUT().challenge19b(a: &a, b: &b)
        XCTAssertEqual(result1.a, 3)
        XCTAssertEqual(result1.b, 2)
    }
    
    // MARK: - Helpers
    
    func makeSUT() -> Solution {
        return Solution()
    }
}
