//
//  ToDoListEntries.swift
//  MyToDoApp
//
//  Created by Savan Kumar on 07/03/25.
//

import Foundation

class ToDoListEntries : Identifiable {
    var title: String = ""
    var description: String = ""
    var date: Date = Date()
    
    init(title: String, description: String, date: Date) {
        self.title = title
        self.description = description
        self.date = date
    }
}


let toDoEntries: [ToDoListEntries] = [ToDoListEntries(title: "Todo1", description: "first", date: Date()), ToDoListEntries(title: "Todo2", description: "Two", date: Date()), ToDoListEntries(title: "Todo3", description: "Three", date: Date())]
