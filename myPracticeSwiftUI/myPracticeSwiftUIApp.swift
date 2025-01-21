//
//  myPracticeSwiftUIApp.swift
//  myPracticeSwiftUI
//
//  Created by Santhosh K on 21/01/25.
//

import SwiftUI

@main
struct myPracticeSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
