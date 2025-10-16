//
//  ItemView.swift
//  UITesting
//
//  Created by Andrei Rech on 15/10/25.
//

import SwiftUI

struct ItemView: View {
    @State var viewModel: ItemViewModelProtocol
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(viewModel.items) { item in
                    Text(item.name)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Capsule().glassEffect())
                        .accessibilityIdentifier(UIIdentifiers.ItemListScreen.item(item.id))
                }
            }
            .accessibilityIdentifier(UIIdentifiers.ItemListScreen.itemList)
            
            Divider()
            
            HStack {
                Button("Remove Last") {
                    viewModel.deleteLastItem()
                }
                .glassEffect()
                .disabled(viewModel.deleteDisabled)
                .accessibilityIdentifier(UIIdentifiers.ItemListScreen.deleteButton)
                
                Button("Add Item") {
                    viewModel.newItemSheetIsShown = true
                }
                .glassEffect()
                .disabled(viewModel.deleteDisabled)
                .accessibilityIdentifier(UIIdentifiers.ItemListScreen.addButton)
                .sheet(isPresented: $viewModel.newItemSheetIsShown) {
                    NewItemView(viewModel: viewModel)
                }
            }
        }
        .background()
        .padding()
    }
}
