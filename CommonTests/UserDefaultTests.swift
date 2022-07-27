//
//  UserDefaultTests.swift
//  CommonTests
//
//  Created by Eric Russell on 7/27/22.
//

import XCTest
import Common

final class UserDefaultTests: XCTestCase {
    struct TestStruct: Codable, Equatable {
        let payload: String
    }
    
    func testCanSaveAndRetrieveFromUserDefaults() throws {
        let subject = TestStruct(payload: "1776")
        
        UserDefaults.standard.set(object: subject, forKey: "2022")
        
        let result = UserDefaults.standard.object(TestStruct.self, with: "2022")
        
        XCTAssertEqual(subject, result)
    }
}
