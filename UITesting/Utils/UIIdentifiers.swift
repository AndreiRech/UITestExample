//
//  UIIdentifiers.swift
//  UITesting
//
//  Created by Andrei Rech on 15/10/25.
//

import Foundation

enum UIIdentifiers {
    enum AddNewItemScreen {
        static let addButton = "AddNewItemScreen.button.add"
        static let itemNameTextField = "AddNewItemScreen.textField.newItem"
        static let sheet = "AddNewItemScreen.sheet"
    }
    
    enum ItemListScreen {
        static let addButton = "ItemListScreen.button.add"
        static let deleteButton = "ItemListScreen.button.delete"
        static let itemList = "ItemListScreen.itemList"
        
        static func item(_ id: UUID?) -> String {
            "ItemListScreen.item.\(id?.uuidString ?? "")"
        }
    }
}
