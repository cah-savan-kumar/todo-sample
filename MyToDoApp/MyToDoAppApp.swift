//
//  MyToDoAppApp.swift
//  MyToDoApp
//
//  Created by Savan Kumar on 07/03/25.
//

import SwiftUI
import SwiftData

@main
struct MyToDoAppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            ToDoItem.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ToDoListView()
        }
        .modelContainer(sharedModelContainer)
    }
}
