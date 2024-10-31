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
    }
    
    func test_uniqueItemsString_returnUniqueItems() {
        let result = makeSUT().getUniqueItems("Aaaabbbcessaabrrnnnq")
        
        XCTAssertEqual(result, "ceq")
    }
    
    func test_isPalindrome_returnTrue() {
        let result = makeSUT().isPalindrome("Rats live on no evil star")
        
        XCTAssertTrue(result)
    }
    
    func test_sameCharacters_returnTrue() {
        let result = makeSUT().sameCharacters(with: "a1 b2", and: "b1 a2")
        
        XCTAssertTrue(result)
    }
    
    func test_containsWord_returnsBoolean() {
        let result = makeSUT().containsWord("WORLD", in: "Hello, world")
        
        XCTAssertTrue(result)
    }
    
    // MARK: - Helpers
    
    func makeSUT() -> Solution {
        return Solution()
    }
}
