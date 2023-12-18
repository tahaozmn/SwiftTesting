//
//  SwiftTestingUITests.swift
//  SwiftTestingUITests
//
//  Created by Taha Özmen on 18.12.2023.
//

import XCTest

final class SwiftTestingUITests: XCTestCase {

    

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        
        let addButton = app.navigationBars["SwiftTesting.View"].buttons["Add"]
        
        
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter Item"]/*[[".cells.textFields[\"Enter Item\"]",".textFields[\"Enter Item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["OK"]
        
        let addedCell = app.tables.cells.containing(.staticText, identifier: "my to do").element
        
        addButton.tap()
        textField.tap()
        textField.typeText("my to do")
        okButton.tap()
        
        XCTAssertTrue(addedCell.exists)
        
        
    }
    
    func testDeleteItem() throws {
       
        
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        
        let addButton = app.navigationBars["SwiftTesting.View"].buttons["Add"]
        
        
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter Item"]/*[[".cells.textFields[\"Enter Item\"]",".textFields[\"Enter Item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["OK"]
        
        let addedCell = app.tables.cells.containing(.staticText, identifier: "my to do").element
        
        let tablesQuery = app.tables
        let deleteButton = tablesQuery.buttons["Delete"]
        
        addButton.tap()
        textField.tap()
        textField.typeText("my to do")
        okButton.tap()
        
        addedCell.swipeLeft()
        deleteButton.tap()
        
        XCTAssertFalse(addedCell.exists)
        
        
    }
    
}
