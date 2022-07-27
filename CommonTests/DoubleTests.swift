//
//  DoubleTests.swift
//  CommonTests
//
//  Created by Eric Russell on 7/27/22.
//

import XCTest
import Common

final class Double_TrigonometryTests: XCTestCase {
    func testDegreesToRadians_360DegreesEqual2Pi() {
        XCTAssertEqual(360.0.degreesToRadians, 2 * .pi)
    }
    
    func testRadiansToDegrees_4PiEquals720() {
        XCTAssertEqual((4.0 * .pi).radiansToDegrees, 720)
    }
}

final class Double_OddEvenPredicatesTests: XCTestCase {
    func testIsOddReturnsCorrectly() {
        XCTAssert(9.0.isOdd)
        XCTAssertFalse(16.0.isOdd)
    }
    
    func testIsEvenReturnsCorrectly() {
        XCTAssert(16.0.isEven)
        XCTAssertFalse(9.0.isEven)
    }
}
