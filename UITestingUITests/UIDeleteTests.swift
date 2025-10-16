//
//  UIDeleteTests.swift
//  UITesting
//
//  Created by Andrei Rech on 15/10/25.
//

import XCTest

@MainActor
final class UIDeleteTests: XCTestCase {
    var app: XCUIApplication!
    
    var itemListScreen: ItemListScreen!
    
    override func setUp() async throws {
        continueAfterFailure = false
        
        app = XCUIApplication()
        app.launch()
        
        itemListScreen = ItemListScreen(app: app)
    }
    
    override func tearDown() async throws {
        app = nil
        itemListScreen = nil
    }
    
    func testPressRemoveLastButtonUpdateItemList() throws {
        // Given
        let initialCount = itemListScreen.getItemCount()
        XCTAssertTrue(initialCount > 0, "Should have at least one item")
        
        // When
        itemListScreen.tapDeleteButton()
        
        // Then
        let finalCount = itemListScreen.getItemCount()
        XCTAssertEqual(initialCount - 1, finalCount, "Expectinig that item count decreases by one")
    }
    
    func testAllItemsRemovedRemoveDisabled() throws {
        // Given
        let initialCount = itemListScreen.getItemCount()
        XCTAssertTrue(initialCount > 0, "Should have at least one item")
        
        let removeLastButton = itemListScreen.deleteButton
        XCTAssertTrue(removeLastButton.isEnabled, "Delete button should be enabled initially")
        
        // When
        for _ in 0..<initialCount {
            removeLastButton.tap()
        }
        
        // Then
        XCTAssertFalse(removeLastButton.isEnabled, "Delete button should be deleted")
        
        let finalCount = itemListScreen.getItemCount()
        XCTAssertEqual(0, finalCount, "Expectinig that item count should be equal to zero")
    }
}
