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
        let result = makeSUT().isUniqueItems("No duplicates")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().isUniqueItems("abcdefghijklmnopqrstuvwxyz")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().isUniqueItems("AaBbCc")
        XCTAssertTrue(result3)
        
        let result4 = makeSUT().isUniqueItems("Hello, world")
        XCTAssertFalse(result4)
    }
    
    func test_uniqueItemsString_returnUniqueItems() {
        let result = makeSUT().getUniqueItems("Aaaabbbcessaabrrnnnq")
        XCTAssertEqual(result, "ceq")
    }
    
    // MARK: - Challenge 2: Is a string a palindrome?
    func test_isPalindrome_returnTrue() {
        let result = makeSUT().isPalindrome("rotator")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().isPalindrome("Rats live on no evil star")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().isPalindrome("Never odd or even")
        XCTAssertFalse(result3)
        
        let result4 = makeSUT().isPalindrome("Hello, world")
        XCTAssertFalse(result4)
    }
    
    // MARK: - Challenge 3: Do two strings contain the same characters?
    func test_sameCharacters_returnTrue() {
        let result = makeSUT().sameCharacters(with: "abca", and: "abca")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().sameCharacters(with: "abc", and: "cba")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().sameCharacters(with: "a1 b2", and: "b1 a2")
        XCTAssertTrue(result3)
        
        let result4 = makeSUT().sameCharacters(with: "abc", and: "abca")
        XCTAssertFalse(result4)
        
        let result5 = makeSUT().sameCharacters(with: "abc", and: "Abc")
        XCTAssertFalse(result5)
        
        let result6 = makeSUT().sameCharacters(with: "abc", and: "cbAa")
        XCTAssertFalse(result6)
        
        let result7 = makeSUT().sameCharacters(with: "abcc", and: "abca")
        XCTAssertFalse(result7)
    }
    
    // MARK: - Challenge 4: Does one string contain another?
    func test_containsWord_returnsBoolean() {
        let result = makeSUT().containsWord("Hello", in: "Hello, world")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().containsWord("WORLD", in: "Hello, world")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().containsWord("Goodbye", in: "Hello, world")
        XCTAssertFalse(result3)
    }
    
    // MARK: - Challenge 5: Count the characters
    func test_countCharacter_returnsTheCount() {
        let result = makeSUT().countCharacter(input: "The rain in Spain", count: "a")
        XCTAssertEqual(result, 2)
        
        let result2 = makeSUT().countCharacter(input: "Mississippi", count: "i")
        XCTAssertEqual(result2, 4)
        
        let result3 = makeSUT().countCharacter(input: "Hacking with Swift", count: "i")
        XCTAssertEqual(result3, 3)
    }
        
    func test_countCharacterUsingFilter_returnsTheCount() {
        let result = makeSUT().countCharacterUsingFilter(input: "The rain in Spain", count: "a")
        XCTAssertEqual(result, 2)
        
        let result2 = makeSUT().countCharacterUsingFilter(input: "Mississippi", count: "i")
        XCTAssertEqual(result2, 4)
        
        let result3 = makeSUT().countCharacterUsingFilter(input: "Hacking with Swift", count: "i")
        XCTAssertEqual(result3, 3)
    }
        
    func test_countCharacterByRemoving_returnsTheCount() {
        let result = makeSUT().countCharacterByRemoving(input: "The rain in Spain", count: "a")
        XCTAssertEqual(result, 2)
        
        let result2 = makeSUT().countCharacterByRemoving(input: "Mississippi", count: "i")
        XCTAssertEqual(result2, 4)
        
        let result3 = makeSUT().countCharacterByRemoving(input: "Hacking with Swift", count: "i")
        XCTAssertEqual(result3, 3)
    }
        
    // MARK: - Challenge 6: Remove duplicate letters from a string
    func test_removeDuplicatesUsingNSOrderedSet_givesString() {
        let result = makeSUT().removeDuplicatesUsingNSOrderedSet(from: "wombat")
        XCTAssertEqual(result, "wombat")
        
        let result2 = makeSUT().removeDuplicatesUsingNSOrderedSet(from: "hello")
        XCTAssertEqual(result2, "helo")
        
        let result3 = makeSUT().removeDuplicatesUsingNSOrderedSet(from: "Mississippi")
        XCTAssertEqual(result3, "Misp")
    }
    
    func test_removeDuplicatesByLooping_givesString() {
        let result = makeSUT().removeDuplicatesByLooping(from: "wombat")
        XCTAssertEqual(result, "wombat")
        
        let result2 = makeSUT().removeDuplicatesByLooping(from: "hello")
        XCTAssertEqual(result2, "helo")
        
        let result3 = makeSUT().removeDuplicatesByLooping(from: "Mississippi")
        XCTAssertEqual(result3, "Misp")
    }
    
    func test_removeDuplicatesByFilter_givesString() {
        let result = makeSUT().removeDuplicatesByFilter(from: "wombat")
        XCTAssertEqual(result, "wombat")
        
        let result2 = makeSUT().removeDuplicatesByFilter(from: "hello")
        XCTAssertEqual(result2, "helo")
        
        let result3 = makeSUT().removeDuplicatesByFilter(from: "Mississippi")
        XCTAssertEqual(result3, "Misp")
    }
    
    // MARK: - Challenge 7: Condense whitespace
    func test_removeAdjacentSpaces_returnValue() {
        let result = makeSUT().removeAdjacentSpaces(input: "a   b   c")
        XCTAssertEqual(result, "a b c")
        
        let result2 = makeSUT().removeAdjacentSpaces(input: "    a")
        XCTAssertEqual(result2, "a")
        
        let result3 = makeSUT().removeAdjacentSpaces(input: " abc ")
        XCTAssertEqual(result3, "abc")
    }
    
    func test_retainSingleSpace_returnValue() {
        let result = makeSUT().retainSingleSpace(input: "a   b   c")
        XCTAssertEqual(result, "a b c")
        
        let result2 = makeSUT().retainSingleSpace(input: "    a")
        XCTAssertEqual(result2, " a")
        
        let result3 = makeSUT().retainSingleSpace(input: "abc")
        XCTAssertEqual(result3, "abc")
    }
    
    func test_singleSpaceByRegEx_returnValue() {
        let result = makeSUT().singleSpaceByRegEx(input: "a   b   c")
        XCTAssertEqual(result, "a b c")
        
        let result2 = makeSUT().singleSpaceByRegEx(input: "    a")
        XCTAssertEqual(result2, " a")
        
        let result3 = makeSUT().singleSpaceByRegEx(input: "abc")
        XCTAssertEqual(result3, "abc")
    }
    
    // MARK: - Challenge 8: String is rotated
    func test_rotateString_givesRotated() {
        let result = makeSUT().rotateString(input: "abcde", rotated: "eabcd")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().rotateString(input: "abcde", rotated: "cdeab")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().rotateString(input: "abcde", rotated: "abced")
        XCTAssertFalse(result3)
        
        let result4 = makeSUT().rotateString(input: "abc", rotated: "a")
        XCTAssertFalse(result4)
    }
    
    // MARK: - Challenge 9: Find pangrams
    func test_isPangrams_returnBoolean() {
        let result = makeSUT().isPangrams(input: "The quick brown fox jumps over the lazy dog")
        XCTAssertTrue(result, "the panagram should return true")
        
        let result2 = makeSUT().isPangrams(input: "The quick brown fox jumped over the lazy dog")
        XCTAssertFalse(result2, "the panagram should return false")
    }
    
    // MARK: - Helpers
    
    func makeSUT() -> Solution {
        return Solution()
    }
}
