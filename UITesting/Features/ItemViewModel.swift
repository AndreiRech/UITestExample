//
//  ItemViewModel.swift
//  UITesting
//
//  Created by Andrei Rech on 15/10/25.
//

import Foundation

@Observable
class ItemViewModel: ItemViewModelProtocol {
    var items: [Item] = Item.examples
    var deleteDisabled: Bool = false
    var newItemSheetIsShown: Bool = false
    
    func deleteLastItem() {
        guard items.isEmpty == false else { return }
        items.removeLast()
        deleteDisabled = items.isEmpty
    }
    
    func addItem(name: String) {
        items.append(Item(name: name))
        deleteDisabled = items.isEmpty
    }
}
