//
//  CGSize.swift
//  RAClient
//
//  Created by Eric Russell on 5/1/22.
//

import CoreGraphics

public extension CGSize {
    // TODO: Check and see if this needs to return negative coordinates.
    
    /// returns a positive random point
    /// - Parameter mock: will return this mock if present.
    /// - Returns: a random point within the size or mock if present.
    func random(mock: CGPoint?=nil) -> CGPoint {
        guard mock == nil else { return mock! }

        return CGPoint(x: CGFloat.random(in: 0..<self.width), y: CGFloat.random(in: 0..<self.height))
    }
}

