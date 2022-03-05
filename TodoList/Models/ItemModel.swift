//
//  ItemModel.swift
//  TodoList
//
//  Created by Oncu Ohancan on 5.03.2022.
//

import Foundation

struct ItemModel: Identifiable {

    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
