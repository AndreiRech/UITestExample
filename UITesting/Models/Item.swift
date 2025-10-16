//
//  Item.swift
//  UITesting
//
//  Created by Andrei Rech on 15/10/25.
//

import Foundation

struct Item: Identifiable {
    let id: UUID
    var name: String
    
    init(name: String, id: UUID = UUID()) {
        self.id = id
        self.name = name
    }
    
    static var examples: [Item] {
        [Item(name: "first"), Item(name: "second"), Item(name: "third"), Item(name: "forth")]
    }
}
