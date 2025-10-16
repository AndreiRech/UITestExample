//
//  ItemListScreen.swift
//  UITestingUITests
//
//  Created by Andrei Rech on 16/10/25.
//

import XCTest

class ItemListScreen {
    private let app: XCUIApplication

    // 1. Map UI elements to they respective identifiers
    var addButton: XCUIElement { app.buttons[UIIdentifiers.ItemListScreen.addButton] }
    var deleteButton: XCUIElement { app.buttons[UIIdentifiers.ItemListScreen.deleteButton] }
    var itemList: XCUIElement { app.descendants(matching: .any)[UIIdentifiers.ItemListScreen.itemList] }

    init(app: XCUIApplication) {
        self.app = app
    }
    
    // 2. Possible actions
    func tapAddButton() {
        addButton.tap()
    }
    
    func tapDeleteButton() {
        deleteButton.tap()
    }
    
    // 3. Function to get the UI actual state
    func getItemCount() -> Int {
        let itemRowId = UIIdentifiers.ItemListScreen.item(nil)
        let predicate = NSPredicate(format: "identifier CONTAINS '\(itemRowId)'")
        return itemList.descendants(matching: .any).matching(predicate).count
    }
}
