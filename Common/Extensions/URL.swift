//
//  URL.swift
//  RAClient
//
//  Created by Eric Russell on 6/17/22.
//

import Foundation

public extension URL {
    var isDirectory: Bool {
       (try? resourceValues(forKeys: [.isDirectoryKey]))?.isDirectory ?? false
    }
}
