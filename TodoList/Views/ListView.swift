//
//  ListView.swift
//  TodoList
//
//  Created by Oncu Ohancan on 4.03.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
    ItemModel(title: "First item", isCompleted: false),
    ItemModel(title: "Second item", isCompleted: true),
    ItemModel(title: "Third", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
            ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
            }
            .navigationTitle("Todo List 🖋")
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
    )
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ListView()
    }
}
}
