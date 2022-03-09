//
//  AddView.swift
//  TodoList
//
//  Created by Oncu Ohancan on 4.03.2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textfield: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    var body: some View {
        ScrollView {
            VStack {
        TextField("Type Something here...", text: $textfield)
                .padding(.horizontal)
                .frame(height: 55)
                .background(.quaternary)
                .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
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
            .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButtonPressed() {
        if textIsAppropriate() {
        listViewModel.addItem(title: textfield)
        presentationMode.wrappedValue.dismiss()
    }
    }
    func textIsAppropriate() -> Bool {
        if textfield.count < 3 {
            alertTitle = "Your new item must be at least 3 characters"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}
struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        AddView()
    }
        .environmentObject(ListViewModel())
}
}
