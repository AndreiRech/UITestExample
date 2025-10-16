//
//  UITestingUITests.swift
//  UITestingUITests
//
//  Created by Andrei Rech on 15/10/25.
//

import XCTest

@MainActor
final class UITestingUITests: XCTestCase {
    var app: XCUIApplication!
    
    var itemListScreen: ItemListScreen!
    var addNewItemScreen: AddNewItemScreen!
    
    override func setUp() async throws {
        continueAfterFailure = false
        
        app = XCUIApplication()
        app.launch()
        
        itemListScreen = ItemListScreen(app: app)
        addNewItemScreen = AddNewItemScreen(app: app)
    }
    
    override func tearDown() async throws {
        app = nil
        itemListScreen = nil
        addNewItemScreen = nil
    }
    
    func testItemsShow() throws {
        // Given
        
        // When
         
        // Then
        XCTAssertTrue(itemListScreen.itemList.exists, "Should see the container (ScrollView with items)")
        XCTAssertTrue(itemListScreen.getItemCount() > 0, "Should have at least one item")
    }
    
    func testAddNewItem() throws {
        // Given
        let initialCount = itemListScreen.getItemCount()
        XCTAssertTrue(initialCount > 0, "Should contain at least one item")
                
        // When
        itemListScreen.tapAddButton()
        addNewItemScreen.addNewItem(name: "Fernando")
        
        // Then
        XCTAssertTrue(addNewItemScreen.waitForSheetToDisappear(), "Should close the add item sheet")
        
        let finalCount = itemListScreen.getItemCount()
        XCTAssertEqual(initialCount + 1, finalCount, "Should have one more item")
    }
}
