//
//  MiniTwoApp.swift
//  MiniTwo
//
//  Created by Rajif Afif on 16/06/23.
//

import SwiftUI

@main
struct MiniTwoApp: App {
    @AppStorage("finishedOnboarding") var finishedOnboarding: Bool = false

    var body: some Scene {
        WindowGroup {
            if (finishedOnboarding) {
                Main()
            } else {
                KPROnboardingView(finishedOnboarding: $finishedOnboarding)
            }
        }
    }
}
