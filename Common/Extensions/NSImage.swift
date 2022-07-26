//
//  NSImage.swift
//  Common
//
//  Created by Eric Russell on 7/26/22.
//

#if os(macOS)
import Cocoa

public typealias UIImage = NSImage

public extension NSImage {
    var cgImage: CGImage? {
        var proposedRect = CGRect(origin: .zero, size: size)

        return cgImage(forProposedRect: &proposedRect,
                       context: nil,
                       hints: nil)
    }
//
//    convenience init?(named name: String) {
//        self.init(named: Name(name))
//    }
}
#endif
