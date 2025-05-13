//
//  ContentView.swift
//  MyToDoApp
//
//  Created by Savan Kumar on 07/03/25.
//

import SwiftUI
import SwiftData

struct ToDoListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [ToDoItem]

    @State var showCreateView = false
                                                          
    var body: some View {
        NavigationStack  {
            List(items)  { entries in
                NavigationLink(destination: ToDoDetailView (detailView: entries)) {
                    ToDoRowView(rowViewData: entries)
                }
                .navigationTitle("To do List")
            }
            .navigationTitle("To do List")
            .toolbar {
                Button(action: addItem) {
                    Label("Add Item", systemImage: "plus")
                }
            }.sheet(isPresented: $showCreateView) {
                AddToDoDetails()
            }
            
        }
    }

    private func addItem() {
       // let newItem = ToDoItem(title: "1", desc: "ToDo1", date: Date())
       // modelContext.insert(newItem)
        showCreateView = true
    }
    
    private func deleteItem(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
    
}

