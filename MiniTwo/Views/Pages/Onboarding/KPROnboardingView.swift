//
//  KPROnboardingView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 02/07/23.
//

import SwiftUI

struct KPROnboardingView: View {
    @Binding var finishedOnboarding: Bool

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    Rectangle()
                        .fill(.blue)
                    Rectangle()
                        .fill(.clear)
                }
                
                VStack(alignment: .center, spacing: 0) {
                    Spacer()
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Ingin Tahu\nKPR Rumah Impianmu ?")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.bottom)
                        
                        HStack {
                            Image(systemName: "checkmark.shield")
                                .bold()
                            Text("Pengecekan kondisi finansial pribadi")
                        }
                        
                        HStack {
                            Image(systemName: "checkmark.shield")
                                .bold()
                            Text("Rekomendasi & perbandingan KPR")
                        }
                        
                        HStack {
                            Image(systemName: "checkmark.shield")
                                .bold()
                            Text("Perhitungan yang didukung dengan machine learning")
                        }
                    }
                    .font(.body)
                    .foregroundColor(.white)
                    
                    Image("home 3d 1")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.9)
                    
                    Spacer()
                    
                    Image("KPR Pro Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.35)
                        .padding()
                    
                    Button(action: {
                        finishedOnboarding.toggle()
                    }, label: {
                        Text("Cari Tahu Sekarang")
                            .font(.body.bold())
                            .foregroundColor(.white)
                            .padding(.all, 12)
                            .frame(width: UIScreen.main.bounds.width - 35)
                            .background(.blue)
                            .cornerRadius(8)
                    })
                    .padding(.bottom, 40)
                }
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}



struct KPROnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        KPROnboardingView(finishedOnboarding: .constant(false))
    }
}
