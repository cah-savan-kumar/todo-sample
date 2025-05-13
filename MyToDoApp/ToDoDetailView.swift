//
//  ToDoDetailView.swift
//  MyToDoApp
//
//  Created by Savan Kumar on 07/03/25.
//

import SwiftUI

struct ToDoDetailView: View {
    
    let detailView: ToDoItem
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(detailView.date, style: .date).bold()
                Text(detailView.desc).bold()
            }.padding()
        }
        .navigationTitle(detailView.title)

    }
}


