//
//  Calculator_ProjectTests.swift
//  Calculator ProjectTests
//
//  Created by build-server on 7/12/21.
//

import XCTest
@testable import Calculator_Project

class Calculator_ProjectTests: XCTestCase {

    var sut: ViewController?
    
    override func setUpWithError() throws {
        sut = ViewController()
    }

    override func tearDownWithError() throws {
        sut?.firstNumber = 0
        sut?.secondNumber = 0
        sut?.signOfTheOperation = "+"
        sut?.result = 0
        sut = nil
    }

    func testSetUpSum() {
        //Give
        sut?.firstNumber = 10
        sut?.secondNumber = 10
        sut?.signOfTheOperation = "+"
        let expectedResult: Float = 20
        //When
        sut?.setUpMathOperation()
        //Then
        XCTAssertEqual(expectedResult, sut?.result ?? 0)
    }
    
    func testSetUpSubtract() {
        //Give
        sut?.firstNumber = 10
        sut?.secondNumber = 5
        sut?.signOfTheOperation = "-"
        let expectedResult: Float = 5
        //When
        sut?.setUpMathOperation()
        //Then
        XCTAssertEqual(expectedResult, sut?.result ?? 0)
    }
    
    func testSetUpMultiply() {
        //Given
        sut?.firstNumber = 7
        sut?.secondNumber = 4
        sut?.signOfTheOperation = "x"
        let expectedResult: Float = 28
        //When
        sut?.setUpMathOperation()
        //Then
        XCTAssertEqual(expectedResult, sut?.result ?? 0)
    }
    
    func testSetUpDivide() {
        //Given
        sut?.firstNumber = 4
        sut?.secondNumber = 2
        sut?.signOfTheOperation = "÷"
        let expectedResult: Float = 2
        //When
        sut?.setUpMathOperation()
        //Then
        XCTAssertEqual(expectedResult, sut?.result ?? 0)
    }
    
}
