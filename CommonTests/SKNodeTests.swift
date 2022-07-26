//
//  SKNodeTests.swift
//  CommonTests
//
//  Created by Eric Russell on 7/26/22.
//

import XCTest
import SpriteKit
import Common

class DrawLineTests: XCTestCase {
    func testReturnsASKShapeNodeWithAPath() throws {
        let subject = SKNode()
        
        let result = subject.drawLine(from: .zero, to: CGPoint(x: 100, y: 100))
        
        let resultAsShapeNode = try XCTUnwrap(result as? SKShapeNode)
        XCTAssertNotNil(resultAsShapeNode.path)
    }
    
    func testAddsLineToItsSKNode() throws {
        let subject = SKNode()
        
        let result = subject.drawLine(from: .zero, to: CGPoint(x: 100, y: 100))
        
        let resultAsShapeNode = try XCTUnwrap(result as? SKShapeNode)
        XCTAssertEqual(resultAsShapeNode.parent,subject)
    }
    
    func testDefaultsToA2PixelBlackLine() throws {
        let subject = SKNode()
        
        let result = subject.drawLine(from: .zero, to: CGPoint(x: 100, y: 100))
        
        let resultAsShapeNode = try XCTUnwrap(result as? SKShapeNode)
        XCTAssertEqual(resultAsShapeNode.strokeColor, SKColor(red: 0, green: 0, blue: 0, alpha: 1))
        XCTAssertEqual(resultAsShapeNode.lineWidth, 2)
    }
    
    func testCallsOptionalStylerClosurePassingInTheNewBorder() throws {
        let subject = SKNode()
        
        var result: SKNode?
        
        let line = subject.drawDashedLine(from: .zero, to: CGPoint(x: 10, y: 10), pattern: [1,1]) {
            result = $0
        }
        
        XCTAssertEqual(result, line)
    }
}

class DrawDashedLineTests: XCTestCase {
    func testReturnsASKShapeNodeWithAPath() throws {
        let subject = SKNode()
        
        let result = subject.drawDashedLine(from: .zero, to: CGPoint(x: 100, y: 100), pattern: [1,1])
        
        let resultAsShapeNode = try XCTUnwrap(result as? SKShapeNode)
        XCTAssertNotNil(resultAsShapeNode.path)
    }
    
    func testAddsLineToItsSKNode() throws {
        let subject = SKNode()
        
        let result = subject.drawDashedLine(from: .zero, to: CGPoint(x: 100, y: 100), pattern: [1,1])
        
        let resultAsShapeNode = try XCTUnwrap(result as? SKShapeNode)
        XCTAssertEqual(resultAsShapeNode.parent,subject)
    }
    
    func testDefaultsToA2PixelBlackLine() throws {
        let subject = SKNode()
        
        let result = subject.drawDashedLine(from: .zero, to: CGPoint(x: 100, y: 100), pattern: [1,1])
        
        let resultAsShapeNode = try XCTUnwrap(result as? SKShapeNode)
        XCTAssertEqual(resultAsShapeNode.strokeColor, SKColor(red: 0, green: 0, blue: 0, alpha: 1))
        XCTAssertEqual(resultAsShapeNode.lineWidth, 2)
    }
    
    func testCallsOptionalStylerClosurePassingInTheNewBorder() throws {
        let subject = SKNode()
        
        var result: SKNode?
        
        let line = subject.drawDashedLine(from: .zero, to: CGPoint(x: 10, y: 10), pattern: [1,1]) {
            result = $0
        }
        
        XCTAssertEqual(result, line)
    }
}

class BorderTests: XCTestCase {
    func testAddsBorderToParentOfSubject() throws {
        let parent = SKNode()
        let subject = SKNode()
        parent.addChild(subject)
        
        subject.border(color: .red, lineWidth: 4)
        let result = parent.children[1]
        
        let resultAsShapeNode = try XCTUnwrap(result as? SKShapeNode)
        XCTAssertEqual(resultAsShapeNode.parent,subject.parent)
    }
    
    func testSetsBorderToPassedColorAndLineWidth() throws {
        let parent = SKNode()
        let subject = SKNode()
        parent.addChild(subject)

        subject.border(color: .red, lineWidth: 4)
        let result = parent.children[1]
        
        let resultAsShapeNode = try XCTUnwrap(result as? SKShapeNode)
        XCTAssertEqual(resultAsShapeNode.strokeColor, .red)
        XCTAssertEqual(resultAsShapeNode.lineWidth, 4)
    }
    
    func testCallsOptionalStylerClosurePassingInTheNewBorder() throws {
        let parent = SKNode()
        let subject = SKNode()
        parent.addChild(subject)
        
        var result: SKNode?
        
        subject.border(color: .red, lineWidth: 4) {
            result = $0
        }
        
        let border = parent.children[1]
        
        XCTAssertEqual(result, border)
    }
}
