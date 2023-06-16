//
//  MiniTwoApp.swift
//  MiniTwo
//
//  Created by Rajif Afif on 16/06/23.
//

import SwiftUI

@main
struct MiniTwoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
