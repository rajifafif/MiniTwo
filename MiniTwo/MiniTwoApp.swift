//
//  MiniTwoApp.swift
//  MiniTwo
//
//  Created by Rajif Afif on 16/06/23.
//

import SwiftUI

@main
struct MiniTwoApp: App {

    var body: some Scene {
        WindowGroup {
            SimulationFormView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
