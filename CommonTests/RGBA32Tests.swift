//
//  RGBA32.swift
//  CommonTests
//
//  Created by Eric Russell on 7/27/22.
//

import XCTest
import Common

final class RGBA32Tests: XCTestCase {
    func testItHasAColorElementThatIsPublicallyGettable() {
        let subject = RGBA32(red: 255, green: 255, blue: 255, alpha: 255)
        
        XCTAssertEqual(subject.color, 0xFFFFFFFF)
    }
    
    func testXComponentsReturnXsValue() {
        let subject = RGBA32(red: 1, green: 2, blue: 3, alpha: 4)
        
        XCTAssertEqual(subject.redComponent, 1)
        XCTAssertEqual(subject.greenComponent, 2)
        XCTAssertEqual(subject.blueComponent, 3)
        XCTAssertEqual(subject.alphaComponent, 4)
    }
    
    func testHasInitializersAsDoubles() {
        let subject = RGBA32(redFactor: 1.0, greenFactor: 0.75, blueFactor: 0.5, alphaFactor: 0.25)
        
        XCTAssertEqual(subject.redComponent, 255)
        XCTAssertEqual(subject.greenComponent, 191)
        XCTAssertEqual(subject.blueComponent, 127)
        XCTAssertEqual(subject.alphaComponent, 63)
    }
    
    func testIsEquatable() {
        let subject1: RGBA32 = .blue
        let subject2: RGBA32 = .lightblue
        
        XCTAssert(subject1 == subject1)
        XCTAssert(subject1 != subject2)
    }
}

