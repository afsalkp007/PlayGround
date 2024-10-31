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
        let result = makeSUT().repetitiveItems("aaaabbbcessaabrrnnnqq")
        
        XCTAssertEqual(result, "abnqrs")
    }
    
    func test_uniqueItems_returnBoolean() {
        let result = makeSUT().uniqueItems("abcd")
        
        XCTAssertTrue(result)
    }
    
    func test_uniqueItemsString_returnUniqueItems() {
        let result = makeSUT().uniqueItemsString("aaaabbbcessaabrrnnnq")
        
        XCTAssertEqual(result, "ceq")
    }
    
    func test_isPalindrome_returnBoolean() {
        let result = makeSUT().isPalindrome("madam")
        
        XCTAssertTrue(result)
    }
    
    // MARK: - Helpers
    
    func makeSUT() -> Solution {
        return Solution()
    }
}
