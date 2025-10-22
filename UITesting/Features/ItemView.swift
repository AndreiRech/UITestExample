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
                }
            }
            
            Divider()
            
            HStack {
                Button("Remove Last") {
                    viewModel.deleteLastItem()
                }
                .padding()
                .glassEffect()
                .disabled(viewModel.deleteDisabled)
                
                Button("Add Item") {
                    viewModel.newItemSheetIsShown = true
                }
                .padding()
                .glassEffect()
                .disabled(viewModel.deleteDisabled)
                .sheet(isPresented: $viewModel.newItemSheetIsShown) {
                    NewItemView(viewModel: viewModel)
                }
            }
        }
        .background()
        .padding()
    }
}
