//
//  URLTests.swift
//  CommonTests
//
//  Created by Eric Russell on 7/26/22.
//

import XCTest
import Common

final class IsDirectoryTests: XCTestCase {
    func testReturnsFalseForSingleTerm() {
        let subject = URL(string: "file:///Users/foo.jpg")!
        XCTAssertFalse(subject.isDirectory)
    }
    
    func testReturnsTrueForASimpleDirectory() throws {
        let subject = try XCTUnwrap(URL(string: "file://Users/"))
        
        XCTAssert(subject.isDirectory)
    }
    
    func testReturnsFalseForAMultiplePartPathEndingInAFile() throws {
        let subject = try XCTUnwrap(URL(string: "file:///Users/ericrussell/Development/.gitignore"))
        
        XCTAssertFalse(subject.isDirectory)
    }
    
    func testReturnsTrueForAMultiplePartPathEndingInADirectory() throws {
        let subject = try XCTUnwrap(URL(string: "file:///Users/ericrussell/"))
        
        XCTAssert(subject.isDirectory)
    }
}
