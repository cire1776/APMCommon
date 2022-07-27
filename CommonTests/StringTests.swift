//
//  StringTests.swift
//  CommonTests
//
//  Created by Eric Russell on 7/26/22.
//

import XCTest
import Common

final class CapitalizingFirstLetterTests: XCTestCase {
    func testReturnsEmptyStringWhenGivenEmptyString() {
        XCTAssertEqual("".capitalizingFirstLetter, "")
    }
    
    func testWorksWithOneLetter() {
        XCTAssertEqual("a".capitalizingFirstLetter, "A")
    }
    
    func testWorksWithALongString() {
        XCTAssertEqual("the quick brown fox...".capitalizingFirstLetter, "The quick brown fox...")
    }
    
    func testWhatHappensWithEmoji() {
        XCTAssertEqual("😀another long string".capitalizingFirstLetter, "😀another long string")
    }
}

class PascalCasedTests: XCTestCase {
    func testReturnsAnEmptyStringWhenGivenAnEmptyString() {
        XCTAssertEqual("".pascalCased, "")
    }
    
    func testReturnsACapitalLetterWhenGivenOneCharacter() {
        XCTAssertEqual("a".pascalCased, "A")
    }
    
    func testCapitalizesAStringThatHasNoSpaces() {
        XCTAssertEqual("longword".pascalCased, "Longword")
    }
    
    func testCapitalizesEachWordInAStringWithSpacesRemovingTheSpaces() {
        XCTAssertEqual("first second third".pascalCased, "FirstSecondThird")
    }
    
    func testReturnsEmptyStringWhenGivenOnlySpaces() {
        XCTAssertEqual("   ".pascalCased, "")
    }
    
    func testStripsTrailingSpaces() {
        XCTAssertEqual("a string   ".pascalCased, "AString")
    }
    
    func testStripsLeadingSpaces() {
        XCTAssertEqual("   a string".pascalCased, "AString")
    }
}

class CamelCasedTests: XCTestCase {
    func testEmptyStringReturnsAnEmptyString() {
        XCTAssertEqual("".camelCased, "")
    }
    
    func testASingleLowercasedCharacterReturnsTheSameCharacter() {
        XCTAssertEqual("a".camelCased, "a")
    }
    
    func testASingleUppercasedCharacterReturnsTheCharacterUppercased() {
        XCTAssertEqual("A".camelCased, "a")
    }
    
    func testASingleLowercasedWordReturnsTheSame() {
        XCTAssertEqual("black".camelCased, "black")

    }
    
    func testASingleCapitalizedWordReturnsTheWordWithALowercaseFirstLetter() {
        XCTAssertEqual("Red".camelCased, "red")
    }
    
    func testManyWordsReturnsEachWordCapitalizedExceptTheFirstWhichIsLowercased() {
        XCTAssertEqual("The Dog Barked".camelCased, "theDogBarked")
    }
}

class SnakeCasedTests: XCTestCase {
    func testEmptyStringReturnsAnEmptyString() {
        XCTAssertEqual("".snakeCased, "")
    }
    
    func testASingleLowercasedCharacterReturnsTheSameCharacter() {
        XCTAssertEqual("a".snakeCased, "a")
    }
    
    func testASingleUppercasedCharacterReturnsTheCharacterUppercased() {
        XCTAssertEqual("A".snakeCased, "a")
    }
    
    func testASingleLowercasedWordReturnsTheSame() {
        XCTAssertEqual("black".snakeCased, "black")

    }
    
    func testASingleCapitalizedWordReturnsTheWordWithALowercaseFirstLetter() {
        XCTAssertEqual("Red".snakeCased, "red")
    }
    
    func testManyWordsReturnsEachWordLowercasedSeparatedByUnderscores() {
        XCTAssertEqual("The Dog Barked".snakeCased, "the_dog_barked")
    }
}
