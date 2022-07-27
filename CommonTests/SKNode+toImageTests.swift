//
//  SKNode.swift
//  CommonTests
//
//  Created by Eric Russell on 7/27/22.
//

import XCTest
import SpriteKit
import Common

final class SKScene_ToImageTests: XCTestCase {
    func testReturnsNilIfTheresNoView() {
        let subject = SKShapeNode(rectOf: CGSize(width: 1776, height: 2022))
        XCTAssertNil(subject.toImage())
    }
    
    func testReturnsAnImageWhenViewIsPresented() {
        let size = CGSize(width: 1776, height: 2022)
        let scene = SKScene(size: size)
        let node = SKShapeNode(rectOf: size)
        let view = SKView(frame: NSRect(origin: .zero, size: size))
        
        view.presentScene(scene)
        scene.addChild(node)
        
        let result = try! XCTUnwrap(node.toImage())
        
        XCTAssertEqual(result.size, size)
    }
}
