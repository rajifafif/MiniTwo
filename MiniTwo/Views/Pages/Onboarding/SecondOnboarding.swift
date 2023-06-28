//
//  FirstOnboarding.swift
//  onboarding
//
//  Created by Ardi Rakhmat  on 27/06/23.
//

import SwiftUI

struct SecondOnboarding: View {
    var body: some View {
        
        
        VStack{
            VStack{
                ZStack{
                    Rectangle()
                        .fill(Color(.systemBlue))
                        .ignoresSafeArea()
                    Image("home 2")
                }
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Forecast your future installment from real data analyst")
                        .font(.title)
                        
                    Text("Unlock your future floating interest based on our prediction")
                }
                .padding(.leading,15)
                .padding(.trailing, 15)
                .padding(.top, 25)
                .padding(.bottom, 85)
            }
            
            
            
            
            
            

        }
        
    }
}

struct SecondOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        SecondOnboarding()
    }
}
