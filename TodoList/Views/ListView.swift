//
//  ListView.swift
//  TodoList
//
//  Created by Oncu Ohancan on 4.03.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
    ItemModel(title: "This is first item", isCompleted: false),
    ItemModel(title: "Second item", isCompleted: true),
    ItemModel(title: "Third", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
            ListRowView(item: item)
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

