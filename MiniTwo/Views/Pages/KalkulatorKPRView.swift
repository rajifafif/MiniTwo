//
//  KalkulatorKPRView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 27/06/23.
//

import SwiftUI

struct KalkulatorKPRView: View {
    
    @State private var hargaProperti = ""
    @State private var uangMuka = ""
    @State private var tenor = ""
    @State private var sukuBungaFixed = ""
    @State private var masaBungaFixed = ""
    @State private var sukuBungaFloating = ""
    
    var body: some View {
        VStack {
            Text("Kalkulator KPR")
                .font(.title2)
                .fontWeight(.heavy)
                .padding(.bottom)
            
            VStack(spacing: 20) {
                TextFieldView(title: "Harga Properti",
                              placeholder: "Rp1.000.000.000",
                              text: $hargaProperti)
                
                TextFieldView(title: "Uang Muka",
                              placeholder: "Rp100.000.000",
                              text: $uangMuka)
                
                TextFieldView(title: "Tenor",
                              placeholder: "10 tahun",
                              text: $tenor)
                
                TextFieldView(title: "Suku Bunga Fixed",
                              placeholder: "Rp10.000.000",
                              text: $sukuBungaFixed)
                
                TextFieldView(title: "Masa Bunga Fixed",
                              placeholder: "3 tahun",
                              text: $masaBungaFixed)
                
                TextFieldView(title: "Suku Bunga Floating",
                              placeholder: "13.5%",
                              text: $sukuBungaFloating)
            }
            
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
            .padding(.vertical, 20)
        }
    }
}

struct KalkulatorKPRView_Previews: PreviewProvider {
    static var previews: some View {
        KalkulatorKPRView()
    }
}
