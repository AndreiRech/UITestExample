//
//  UITestingApp.swift
//  UITesting
//
//  Created by Andrei Rech on 15/10/25.
//

import SwiftUI

@main
struct UITestingApp: App {
    var body: some Scene {
        WindowGroup {
            ItemView(viewModel: ItemViewModel())
        }
    }
}
