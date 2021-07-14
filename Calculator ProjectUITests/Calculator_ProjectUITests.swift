//
//  Calculator_ProjectUITests.swift
//  Calculator ProjectUITests
//
//  Created by build-server on 7/13/21.
//

import XCTest
@testable import Calculator_Project

class Calculator_ProjectUITests: XCTestCase {
    
    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testSumTwoNumbers() throws {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "2.0"
        //When
        app.buttons["1"].tap()
        app.buttons["+"].tap()
        app.buttons["1"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
        
    }
    
    func testSubtractTwoNumbers() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "5.0"
        //When
        app.buttons["1"].tap()
        app.buttons["0"].tap()
        app.buttons["-"].tap()
        app.buttons["5"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
    
    func testMultiplyTwoNumbers() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "200.0"
        //When
        app.buttons["2"].tap()
        app.buttons["0"].tap()
        app.buttons["x"].tap()
        app.buttons["1"].tap()
        app.buttons["0"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
    
    func testDivideTwoNumbers() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "Cannot divide a number by zero"
        //When
        app.buttons["5"].tap()
        app.buttons["÷"].tap()
        app.buttons["0"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
    
    func testChangeSignOfTheNumber() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "1.0"
        //When
        app.buttons["5"].tap()
        app.buttons["+/-"].tap()
        app.buttons["+"].tap()
        app.buttons["6"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
    
    func testSumDecimalNumber() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "13.1"
        //When
        app.buttons["5"].tap()
        app.buttons["."].tap()
        app.buttons["6"].tap()
        app.buttons["+"].tap()
        app.buttons["7"].tap()
        app.buttons["."].tap()
        app.buttons["5"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
    
    func testDeleteNumbersAndSumAfter() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "134.0"
        //When
        app.buttons["8"].tap()
        app.buttons["9"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["backspace"].tap()
        app.buttons["backspace"].tap()
        app.buttons["+"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["3"].tap()
        app.buttons["backspace"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
    
    func testSumThreeNumbers() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "17.0"
        //When
        app.buttons["9"].tap()
        app.buttons["+"].tap()
        app.buttons["5"].tap()
        app.buttons["+"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
    
    func testSubtractThreeNumbers() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "3.0"
        //When
        app.buttons["8"].tap()
        app.buttons["-"].tap()
        app.buttons["3"].tap()
        app.buttons["-"].tap()
        app.buttons["2"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
    
    func testMultiplyThreeNumbers() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "50.0"
        //When
        app.buttons["5"].tap()
        app.buttons["x"].tap()
        app.buttons["5"].tap()
        app.buttons["x"].tap()
        app.buttons["2"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
    
    func testDivideThreeNumbers() {
        let app = XCUIApplication()
        app.launch()
        //Given
        let expectedResult = "5.0"
        //When
        app.buttons["5"].tap()
        app.buttons["0"].tap()
        app.buttons["÷"].tap()
        app.buttons["2"].tap()
        app.buttons["÷"].tap()
        app.buttons["5"].tap()
        app.buttons["="].tap()
        let textViewText = app.descendants(matching: .textView).descendants(matching: .textView).element.label
        //Then
        XCTAssertEqual(expectedResult, textViewText)
    }
}
