//
//  ItemModel.swift
//  learn-swiftui
//
//  Created by Vu Khac on 28/08/2022.
//

import Foundation


struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    static var exampleItem = Item(name: "Xbox", description: "abc 123123" )
}
