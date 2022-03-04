//
//  AddView.swift
//  TodoList
//
//  Created by Oncu Ohancan on 4.03.2022.
//

import SwiftUI

struct AddView: View {
    
    @State var textfield: String = ""
    var body: some View {
        ScrollView {
            VStack {
        TextField("Type Something here...", text: $textfield)
                .padding(.horizontal)
                .frame(height: 55)
                .background(.quaternary)
                .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("SAVE".uppercased())
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.headline)
                })
            }
            .padding(16)
        }
            .navigationTitle("Add an Item 🖊")
    }
}
struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        AddView()
    }
}
}
