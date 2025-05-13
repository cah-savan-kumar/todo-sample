//
//  Item.swift
//  MyToDoApp
//
//  Created by Savan Kumar on 07/03/25.
//

import Foundation
import SwiftData

@Model
final class ToDoItem {
    var title: String = ""
    var desc: String = ""
    var date: Date = Date()
    
    init(title: String, desc: String, date: Date) {
        self.title = title
        self.desc = desc
        self.date = date
    }
}



