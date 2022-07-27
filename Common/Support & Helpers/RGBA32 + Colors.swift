//
//  RGBA32 + Colors.swift
//  Common
//
//  Created by Eric Russell on 7/27/22.
//

import Foundation


public extension RGBA32 {
    static let red     = RGBA32(red: 255, green: 0,   blue: 0,   alpha: 255)
    static let green   = RGBA32(red: 0,   green: 255, blue: 0,   alpha: 255)
    static let blue    = RGBA32(red: 0,   green: 0,   blue: 255, alpha: 255)
    static let powderblue
                       = RGBA32(red: 173, green: 216, blue: 230, alpha: 255)
    static var lightblue = RGBA32(red: 153, green:   204, blue: 255, alpha: 255)
    static let white   = RGBA32(red: 255, green: 255, blue: 255, alpha: 255)
    static let black   = RGBA32(red: 0,   green: 0,   blue: 0,   alpha: 255)
    static let magenta = RGBA32(red: 255, green: 0,   blue: 255, alpha: 255)
    static let yellow  = RGBA32(red: 255, green: 255, blue: 0,   alpha: 255)
    static let cyan    = RGBA32(red: 0,   green: 255, blue: 255, alpha: 255)
    static let clear   = RGBA32(red: 0,   green: 0,   blue: 0,   alpha: 0)
    static let tan     = RGBA32(red: 245, green: 222, blue: 179, alpha: 255)
    static var brown = RGBA32(red: 98, green: 52, blue: 18, alpha: 255)
    static let lightyellow
                       = RGBA32(red: 255, green: 255, blue: 224, alpha: 255)
    static let lightgray = RGBA32(red: 211, green: 211, blue: 211, alpha: 255)
}
