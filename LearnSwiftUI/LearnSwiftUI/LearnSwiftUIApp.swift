//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 22/05/21.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
