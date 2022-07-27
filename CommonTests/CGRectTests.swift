//
//  CGRectTests.swift
//  CommonTests
//
//  Created by Eric Russell on 7/27/22.
//

import XCTest
import Common

final class CGRectTests: XCTestCase {
    func testHasOriginUsingDiscreteCoordinates() {
        let rect = CGRect(origin: .zero, dx: 100, dy: 100)
        
        // Assuming the origin is the center then double the size.
        XCTAssertEqual(rect.size,CGSize(width: 200, height: 200))
    }
}
