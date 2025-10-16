//
//  AddNewItemScreen.swift
//  UITestingUITests
//
//  Created by Andrei Rech on 16/10/25.
//

import XCTest

class AddNewItemScreen {
    private let app: XCUIApplication
    
    // 1. Map UI elements to they respective identifiers
    var sheet: XCUIElement { app.descendants(matching: .any)[UIIdentifiers.AddNewItemScreen.sheet] }
    var itemNameTextField: XCUIElement { app.textFields[UIIdentifiers.AddNewItemScreen.itemNameTextField] }
    var addButton: XCUIElement { app.buttons[UIIdentifiers.AddNewItemScreen.addButton] }

    init(app: XCUIApplication) {
        self.app = app
    }
    
    // 2. Possible actions
    func addNewItem(name: String) {
        XCTAssertTrue(sheet.waitForExistence(timeout: 1), "Sheet should ve visible")
        
        itemNameTextField.tap()
        itemNameTextField.typeText(name)
        addButton.tap()
    }
    
    // 3. Function to get the UI actual state
    func waitForSheetToDisappear() -> Bool {
        return !sheet.waitForExistence(timeout: 1)
    }
}
