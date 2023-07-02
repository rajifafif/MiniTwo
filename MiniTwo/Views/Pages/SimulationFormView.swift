//
//  SimulationFormView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 26/06/23.
//

import SwiftUI

struct SimulationFormView: View {
    
    @StateObject private var simulationViewModel = SimulationViewModel()
    
    @State private var showSimulationSheet = false
    
    @FocusState private var focusedField: FocusedField?
    
    var body: some View {
        ZStack {
            Image("homeBackground")
                .resizable()
                .scaledToFit()
                .offset(y: -170)
                .ignoresSafeArea()
            
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color.white.opacity(0.3), location: 0),
                    .init(color: .white, location: 0.45)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Spacer()
                
                Text("Berapa cicilan")
                    .foregroundColor(.black)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading)
                Text("Rumah Impianku?")
                    .foregroundColor(.black)
                    .font(.largeTitle.bold())
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 20) {
                    TextFieldView(textFieldType: TextFieldType.hargaProperti,
                                  value: $simulationViewModel.hargaProperti)
                    .focused($focusedField, equals: .hargaProperti)
                  
                    TextFieldView(textFieldType: TextFieldType.uangMuka,
                                  value: $simulationViewModel.nominalDP)
//                    .focused($focusedField, equals: .uangMuka)
                    
                    TextFieldView(textFieldType: TextFieldType.tenor,
                                  value: $simulationViewModel.masaTenor)
//                    .focused($focusedField, equals: .tenor)
                    
                    TextFieldView(textFieldType: TextFieldType.gaji,
                                  value: $simulationViewModel.gaji)
//                    .focused($focusedField, equals: .gaji)
                    
                }
                .font(.body)
                .padding()
                
                Button(action: {
                    // add action here ngab
                    showSimulationSheet.toggle()
                    
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
                .padding(.vertical, 15)
            }
            .padding(.horizontal, 50)
        }
        .sheet(isPresented: $showSimulationSheet) {
            ProgramKPRView()
                .environmentObject(simulationViewModel)
        }
    }
}

struct SimulationFormView_Previews: PreviewProvider {
    static var previews: some View {
        SimulationFormView()
    }
}
