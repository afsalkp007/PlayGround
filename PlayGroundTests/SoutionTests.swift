//
//  SoutionTests.swift
//  PlayGroundTests
//
//  Created by Afsal on 31/10/2024.
//

import XCTest
@testable import PlayGround

class SoutionTests: XCTestCase {
    
    func test_repetitiveItems_returnString() {
        let result = makeSUT().getRepetitiveItems("AAaaabbbcessaabrrnnnqq")
        XCTAssertEqual(result, "abnqrs")
    }
    
    func test_uniqueItems_returnTrue() {
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
    
    func test_containsWord_returnsBoolean() {
        let result = makeSUT().containsWord("Hello", in: "Hello, world")
        XCTAssertTrue(result)
        
        let result2 = makeSUT().containsWord("WORLD", in: "Hello, world")
        XCTAssertTrue(result2)
        
        let result3 = makeSUT().containsWord("Goodbye", in: "Hello, world")
        XCTAssertFalse(result3)
    }
    
    func test_countCharacter_returnsTheCount() {
        let result = makeSUT().countCharacter("a", in: "The rain in Spain")
        XCTAssertEqual(result, 2)
        
        let result2 = makeSUT().countCharacter("i", in: "Mississippi")
        XCTAssertEqual(result2, 4)
        
        let result3 = makeSUT().countCharacter("i", in: "Hacking with Swift")
        XCTAssertEqual(result3, 3)
    }
    
    // MARK: - Helpers
    
    func makeSUT() -> Solution {
        return Solution()
    }
}
