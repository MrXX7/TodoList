//
//  TodoListApp.swift
//  TodoList
//
//  Created by Oncu Ohancan on 4.03.2022.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
            ListView()
        }
            .environmentObject(listViewModel)
    }
}
}
