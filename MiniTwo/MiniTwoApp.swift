//
//  MiniTwoApp.swift
//  MiniTwo
//
//  Created by Rajif Afif on 16/06/23.
//

import SwiftUI

@main
struct MiniTwoApp: App {
    @AppStorage("isSkipOnboarding") var isSkipOnboarding: Bool = false

    var body: some Scene {
        WindowGroup {
            if (isSkipOnboarding) {
                
                // Go To Main
                Main()
            } else {
                
                // Onboarding
                OnboardingView(isSkipOnboarding: $isSkipOnboarding)
            }
        }
    }
}
