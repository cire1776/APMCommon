//
//  Double.swift
//  Royal Ambition
//
//  Created by Eric Russell on 1/28/22.
//

import Foundation

public extension Double {
    var degreesToRadians: Double {
        return self * .pi / 180
    }
    
    var radiansToDegrees: Double {
        return (self * 180) / .pi
    }
}

public extension Double {
    var isOdd: Bool {
        return Int(self) % 2 == 1
    }
    
    var isEven: Bool {
        return Int(self) % 2 == 0
    }
}

// TODO: Test, if keeping. Else Remove
extension Double {
    static func randomBell(minimum: Double, maximum: Double, skew: Double) -> Double{
        var u = 0.0, v = 0.0
        
        while(u == 0) { u = Double.random(in: 0..<1) } //Converting [0,1) to (0,1)
        while(v == 0) { v = Double.random(in: 0..<1) }
        
        var result = sqrt( -2.0 * log( u ) ) * cos( 2.0 * .pi * v )

        result = result / 10.0 + 0.5 // Translate to 0 -> 1
        
        if (result > 1 || result < 0) {
            // resample between 0 and 1 if out of range
            result = Double.randomBell(minimum: minimum, maximum: maximum, skew: skew)
        }
        
        result = pow(result, skew)        // Skew
        result *= maximum - minimum    // Stretch to fill range
        result += minimum              // offset to min
        return result
    }
}
