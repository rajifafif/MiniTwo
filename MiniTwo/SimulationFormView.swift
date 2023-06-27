//
//  SimulationFormView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 26/06/23.
//

import SwiftUI

struct SimulationFormView: View {
    
    @State private var hargaProperti = ""
    @State private var nominalDP = ""
    @State private var masaTenor = ""
    @State private var gaji = ""
    
    var body: some View {
        ZStack {
            Image("homeBackground")
                .resizable()
                .scaledToFit()
                .offset(y: -145)
                .ignoresSafeArea()
            
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color.white.opacity(0.3), location: 0),
                    .init(color: .white, location: 0.55)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
                
            VStack(alignment: .leading) {
                Spacer()
                
                Text("Berapa cicilan")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading)
                Text("Rumah Impianku?")
                    .font(.largeTitle.bold())
                    .padding(.leading)
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("Harga properti")
                        TextField("Rp1.000.000.000", text: $hargaProperti)
                            .padding(.all, 12)
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .background(Color(UIColor.systemGray5))
                            .cornerRadius(5)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Nominal DP")
                        TextField("Rp1.000.000.000", text: $nominalDP)
                            .padding(.all, 12)
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .background(Color(UIColor.systemGray5))
                            .cornerRadius(5)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Masa tenor")
                        TextField("10 tahun", text: $masaTenor)
                            .padding(.all, 12)
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .background(Color(UIColor.systemGray5))
                            .cornerRadius(5)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Gaji saat ini")
                        TextField("Rp10.000.000", text: $gaji)
                            .padding(.all, 12)
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .background(Color(UIColor.systemGray5))
                            .cornerRadius(5)
                    }
                }
                .font(.body)
                .padding()
                
                Button(action: {
                    // add action here ngab
                    
                }, label: {
                    Spacer()
                    HStack {
                        Text("Cari Tahu Sekarang")
                        Image(systemName: "house.fill")
                    }
                    .font(.body.bold())
                    .foregroundColor(.white)
                    .padding(.all, 12)
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(.blue)
                    .cornerRadius(8)
                    Spacer()
                })
            }
            .padding(.horizontal, 50)
        }
    }
}

struct SimulationFormView_Previews: PreviewProvider {
    static var previews: some View {
        SimulationFormView()
    }
}
