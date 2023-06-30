//
//  FirstOnboarding.swift
//  onboarding
//
//  Created by Ardi Rakhmat  on 27/06/23.
//

import SwiftUI

struct FirstOnboarding: View {
    var body: some View {
        
        
        VStack{
            VStack{
                ZStack{
                    Rectangle()
                        .fill(Color(.systemBlue))
                        .ignoresSafeArea()
                    Image("home 3d 1")
                }
                
                VStack(spacing: 15){
                    Text("Become a smart home owner in a glimpse")
                        .font(.title)
                        
                    Text("Uncover the hidden cost of monthly home loan")
                    
                }
                .padding(.leading,15)
                .padding(.trailing, 15)
                .padding(.top, 25)
                .padding(.bottom, 85)
            }
            
            
            
            
            
            

        }
        
    }
}

struct FirstOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        FirstOnboarding()
    }
}
