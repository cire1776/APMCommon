//
//  String.swift
//  RAClient
//
//  Created by Eric Russell on 6/18/22.
//

import Foundation

public extension String {
    var capitalizingFirstLetter: String {
        return prefix(1).uppercased() + dropFirst()
    }

    var pascalCased: String {
        return self.lowercased()
            .split(separator: " ")
            .map { return $0.lowercased().capitalizingFirstLetter }
            .joined()
    }
    
    var camelCased: String {
        let upperCased = self.pascalCased
        
        return upperCased.prefix(1).lowercased() + upperCased.dropFirst()
    }
    
    var snakeCased: String {
        self.lowercased().split(separator: " ")
            .joined(separator: "_")
    }
}
