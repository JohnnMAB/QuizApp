//
//  QuizAppApp.swift
//  QuizApp
//
//  Created by Jhonathan Mattos on 17/02/24.
//

import SwiftUI

@main
struct QuizAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
