//
//  ItemViewModelProtocol.swift
//  UITesting
//
//  Created by Andrei Rech on 15/10/25.
//

import Foundation

protocol ItemViewModelProtocol {
    var items: [Item] { get set }
    var deleteDisabled: Bool { get set }
    var newItemSheetIsShown: Bool { get set }
    
    func deleteLastItem()
    func addItem(name: String)
}
