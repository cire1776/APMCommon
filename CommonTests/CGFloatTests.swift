//
//  CGFloatTests.swift
//  CommonTests
//
//  Created by Eric Russell on 7/27/22.
//

import XCTest

final class CGFloatTests: XCTestCase {
    func testIsOddReturnsCorrectly() {
        XCTAssert(CGFloat(9).isOdd)
        XCTAssertFalse(CGFloat(16).isOdd)
    }
    
    func testIsEvenReturnsCorrectly() {
        XCTAssert(CGFloat(16).isEven)
        XCTAssertFalse(CGFloat(9).isEven)
    }
}
