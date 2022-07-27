//
//  CGRect.swift
//  RAClient
//
//  Created by Eric Russell on 5/1/22.
//

import CoreGraphics

public extension CGRect {
    // TODO: Evaluate whether this is correct.
    init(origin: CGPoint, dx: CGFloat, dy: CGFloat) {
        self.init(x: origin.x, y: origin.y, width: dx * 2, height: dy * 2)
    }
}
