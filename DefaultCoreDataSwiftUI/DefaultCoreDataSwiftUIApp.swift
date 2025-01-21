//
//  DefaultCoreDataSwiftUIApp.swift
//  DefaultCoreDataSwiftUI
//
//  Created by Santhosh K on 21/01/25.
//

import SwiftUI

@main
struct DefaultCoreDataSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
