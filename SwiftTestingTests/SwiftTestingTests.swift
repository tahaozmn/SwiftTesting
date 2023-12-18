//
//  SwiftTestingTests.swift
//  SwiftTestingTests
//
//  Created by Taha Özmen on 18.12.2023.
//

import XCTest
@testable import SwiftTesting

final class SwiftTestingTests: XCTestCase {

    let math = MathematicFunctions()
    
    func testAddIntegerFunction() {
        let result = math.addIntegers(x: 5, y: 8)
        
        XCTAssertEqual(result, 13)
    }
    
    func testMultiplyFunction() {
        let result2 = math.multiplyNumbers(x: 4, y: 6)
        
        XCTAssertEqual(result2, 24)
    }
    
    func testDivideFunction() {
        let result3 = math.divideIntegers(x: 15, y: 5)
        
        XCTAssertGreaterThan(result3, 2)
    }
    
    


}
