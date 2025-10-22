//
//  NewItemView.swift
//  UITesting
//
//  Created by Andrei Rech on 15/10/25.
//

import SwiftUI

struct NewItemView: View {
    @State var viewModel: ItemViewModelProtocol
    @State var newItemName = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Item name", text: $newItemName)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            Button("Add Item") {
                if !newItemName.isEmpty {
                    viewModel.addItem(name: newItemName)
                    dismiss()
                }
            }
            .glassEffect()
            .disabled(newItemName.isEmpty)
        }
        .padding()
    }
}
