//
//  SimulationFormView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 26/06/23.
//

import SwiftUI

class SheetStateManager: ObservableObject {
    @Published var isPresented = false
    static let shared = SheetStateManager()
}

struct SimulationFormView: View {
    
    @State private var hargaProperti = ""
    @State private var nominalDP = ""
    @State private var masaTenor = ""
    @State private var gaji = ""
    @ObservedObject var sheetStateManager = SheetStateManager.shared
    
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
                
                VStack(spacing: 20) {
                    TextFieldView(title: "Harga properti",
                                  placeholder: "Rp1.000.000.000",
                                  text: $hargaProperti)
                    
                    TextFieldView(title: "Nominal DP",
                                  placeholder: "Rp100.000.000",
                                  text: $nominalDP)
                    
                    TextFieldView(title: "Masa tenor",
                                  placeholder: "10 tahun",
                                  text: $masaTenor)
                    
                    TextFieldView(title: "Gaji saat ini",
                                  placeholder: "Rp10.000.000",
                                  text: $gaji)
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
                    .frame(width: UIScreen.main.bounds.width - 35)
                    .background(.blue)
                    .cornerRadius(8)
                    Spacer()
                })
                .padding(.vertical, 10)
            }
            .padding(.horizontal, 50)
            .sheet(isPresented: $sheetStateManager.isPresented) {
                InfoSheetView()
            }
        }
    }
}

struct SimulationFormView_Previews: PreviewProvider {
    static var previews: some View {
        SimulationFormView()
    }
}
