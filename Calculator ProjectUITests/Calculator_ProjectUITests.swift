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
    
}
