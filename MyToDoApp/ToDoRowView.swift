//
//  ToDoRowView.swift
//  MyToDoApp
//
//  Created by Savan Kumar on 07/03/25.
//

import SwiftUI

struct ToDoRowView: View  {
    let rowViewData: ToDoItem
    
    var body: some View {
        VStack {
            HStack {
                Text(rowViewData.title).bold()
                Text("-")
                Text(rowViewData.desc).lineLimit(1)
                    .foregroundStyle(.secondary)
                
            }
            HStack {
                Text(rowViewData.date, style: .date).lineLimit(1)
                    .foregroundStyle(.secondary)
            }
        }
    }
}
