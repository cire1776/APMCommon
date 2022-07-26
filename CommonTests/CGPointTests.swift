//
//  CGPointTests.swift
//  GeographyTests
//
//  Created by Eric Russell on 7/22/22.
//

import XCTest
import CoreGraphics
import Common

final class CGPointTests: XCTestCase {
    func testConvertsToAVectorFloat() throws {
        let subject = CGPoint(x: 100, y: 200)
        let result = subject.vector_float2
        XCTAssertEqual(result.x, 100)
        XCTAssertEqual(result.y, 200)
    }
    
    func testCanInstantiateFromCoordinatesTuple() {
        let subject = CGPoint((76,17))
        XCTAssertEqual(subject.x, 76)
        XCTAssertEqual(subject.y, 17)
    }
    
    func testCGPointsCanBeSubtracted() {
        let subject1 = CGPoint(x: 100,y: 100)
        let subject2 = CGPoint(x: 76,y: 17)
        
        let result = subject1 - subject2
        
        XCTAssertEqual(result.x, 24)
        XCTAssertEqual(result.y, 83)
    }
    
    func testCGPointsCanBeAdded() {
        let subject1 = CGPoint(x: 100,y: 100)
        let subject2 = CGPoint(x: 76,y: 17)
        
        let result = subject1 + subject2
        
        XCTAssertEqual(result.x, 176)
        XCTAssertEqual(result.y, 117)
    }
    
    func testCGPointsHaveAMagnitude() {
        let subject1 = CGPoint(x: 3,y: 4)
        
        XCTAssertEqual(subject1.magnitude, 5.0)
    }
    
    func testCGPointCanDetermineDistanceBetweenOtherCGPoint() {
        let subject1 = CGPoint(x: 100,y: 0)
        let subject2 = CGPoint(x: 76,y: 0)
        let subject3 = CGPoint(x: 100, y: 24)
        
        XCTAssertEqual(subject1.distance(from: subject2), 24)
        XCTAssertEqual(subject1.distance(from: subject3), 24)
    }
}
