//
//  Int.swift
//  RAClient
//
//  Created by Eric Russell on 6/1/22.
//

import Foundation

public extension Int {
    var isOdd: Bool {
        return Int(self) % 2 == 1
    }
    
    var isEven: Bool {
        return Int(self) % 2 == 0
    }
}
