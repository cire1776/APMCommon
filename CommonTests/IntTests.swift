//
//  IntTests.swift
//  GeographyLib
//
//  Created by Eric Russell on 7/24/22.
//

import XCTest
import Common



class OddEvenPredicatesTests: XCTestCase {
    func testIsOddReturnsCorrectly() {
        XCTAssert(9.isOdd)
        XCTAssertFalse(16.isOdd)
    }
    
    func testIsEvenReturnsCorrectly() {
        XCTAssert(16.isEven)
        XCTAssertFalse(9.isEven)
    }
}
