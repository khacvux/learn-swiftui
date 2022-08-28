//
//  ViewModel.swift
//  learn-swiftui
//
//  Created by Vu Khac on 28/08/2022.
//

import Foundation
import SwiftUI


extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var isTurnedOn: Bool = false
        @Published var counter = 0
        @Published var itemList = [Item]()
        
        func increment () {
            counter += 1
        }
        
        func addItem() {
            let randomItems = ["123123", "123123", "3123", "12312331231"]
            let item = randomItems.randomElement()! 
            
            let newItem = Item(name: item, description: "Item: \(itemList.count + 1)")
            
            withAnimation {
                itemList.insert(newItem, at: 0)
            }
            
        }
        
    }
}
