//
//  OnboardingView.swift
//  onboarding
//
//  Created by Ardi Rakhmat  on 27/06/23.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentTab = 0

    var body: some View {
        VStack{
            TabView(selection: $currentTab,
                    content:  {
                        FirstOnboarding()
                            .tag(0)
                        SecondOnboarding()
                            .tag(1)
                        ThirdOnboarding()
                            .tag(2)
                    }
            
            )
            
            
            .ignoresSafeArea()
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                           
            VStack{
                
                Button("I'm new to the app"){
                    print("tes")
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width - 40)
                .foregroundStyle(.white)
                            .background(Color(.systemBlue))
                            .clipShape(Capsule())
               // .padding(.bottom, 25)
                
                
                Button("Skip"){
                    print("tes")
                }
                .foregroundColor(.black)
                .padding()
                .frame(width: UIScreen.main.bounds.width - 40)
                //.foregroundStyle(.white)
                //.frame(width: 300)
                .clipShape(Capsule())
               // .padding(.bottom, 25)

            }

                            
        }
        
    }
        
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
