//
//  FirstOnboarding.swift
//  onboarding
//
//  Created by Ardi Rakhmat  on 27/06/23.
//

import SwiftUI

struct ThirdOnboarding: View {
    var body: some View {
        
        
        VStack{
            VStack{
                ZStack{
                    Rectangle()
                        .fill(Color(.systemBlue))
                        .ignoresSafeArea()
                    Image("7911368 1")
                }
                
                VStack(spacing: 15){
                    Text("A home loan that suits your financial health")
                        .font(.title)
                    Text("Compare among available bank payments method to find the best method")
                }
                .padding(.leading,15)
                .padding(.trailing, 15)
                .padding(.top, 25)
                .padding(.bottom, 85)
            }
            
            
            
            
            
            

        }
        
    }
}

struct ThirdOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        ThirdOnboarding()
    }
}
