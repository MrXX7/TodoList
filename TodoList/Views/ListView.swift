//
//  ListView.swift
//  TodoList
//
//  Created by Oncu Ohancan on 4.03.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
    "This is first item",
    "Second item",
    "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
            ListRowView(title: item)
            }
        }
            .navigationTitle("Todo List 🖋")
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
    )
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ListView()
    }
}
}

