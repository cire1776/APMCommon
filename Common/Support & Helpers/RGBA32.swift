//
//  RGBA32.swift
//  Character Tool
//
//  Created by Eric Russell on 2/25/22.
//

import Foundation
import CoreGraphics

public struct RGBA32: Equatable {
    
    public private(set) var color: UInt32

    public var redComponent: UInt8 {
        return UInt8((color >> 24) & 255)
    }

    public var greenComponent: UInt8 {
        return UInt8((color >> 16) & 255)
    }

    public var blueComponent: UInt8 {
        return UInt8((color >> 8) & 255)
    }

    public var alphaComponent: UInt8 {
        return UInt8((color >> 0) & 255)
    }

    public init(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        let red   = UInt32(red)
        let green = UInt32(green)
        let blue  = UInt32(blue)
        let alpha = UInt32(alpha)
        color = (red << 24) | (green << 16) | (blue << 8) | (alpha << 0)
    }
    
    public init(redFactor: Double, greenFactor: Double, blueFactor: Double, alphaFactor: Double) {
        let red   = UInt8(redFactor * 255)
        let green = UInt8(greenFactor * 255)
        let blue  = UInt8(blueFactor * 255)
        let alpha = UInt8(alphaFactor * 255)
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    static let bitmapInfo = CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Little.rawValue

    public static func ==(lhs: RGBA32, rhs: RGBA32) -> Bool {
        return lhs.color == rhs.color
    }
}
