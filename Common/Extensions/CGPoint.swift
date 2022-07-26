//
//  CGPoint.swift
//  Royal Ambition
//
//  Created by Eric Russell on 2/23/22.
//

import CoreGraphics
import GameplayKit

infix operator - : AdditionPrecedence
infix operator + : AdditionPrecedence

public extension CGPoint {
    var vector_float2: vector_float2 {
        simd_float2(Float(self.x), Float(self.y))
    }
    
    init(_ coordinates: (x: Int, y: Int)) {
        self.init(x: coordinates.x, y: coordinates.y)
    }
    
    static func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    
    static func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    
    var magnitude: CGFloat {
        sqrt( (pow(self.x,2) + pow(self.y,2) ))
    }
    
    func distance(from other: CGPoint) -> CGFloat {
        sqrt(pow(other.x - x,2) + pow((other.y - y),2))
    }
}
