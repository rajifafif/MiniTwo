//
//  KalkulatorKPRView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 27/06/23.
//

import SwiftUI

struct KalkulatorKPRView: View {
    
    @State private var hargaProperti = 0.0
    @State private var uangMuka = 0.0
    @State private var tenor = 0.0
    @State private var sukuBungaFixed = 0.0
    @State private var periodeBungaFixed = 0.0
    @State private var sukuBungaFloating = 0.0
    
    @FocusState private var focusedField: FocusedField?
    
    var body: some View {
        VStack {
            Text("Kalkulator KPR")
                .font(.title2)
                .fontWeight(.heavy)
                .padding(.bottom)
            
            VStack(spacing: 20) {
                TextFieldView(textFieldType: TextFieldType.hargaProperti,
                              value: $hargaProperti)
                .focused($focusedField, equals: .hargaProperti)
                
                TextFieldView(textFieldType: TextFieldType.uangMuka,
                              value: $uangMuka)
                .focused($focusedField, equals: .uangMuka)
                
                TextFieldView(textFieldType: TextFieldType.tenor,
                              value: $tenor)
                .focused($focusedField, equals: .tenor)
                
                TextFieldView(textFieldType: TextFieldType.sukuBungaFixed,
                              value: $sukuBungaFixed)
                .focused($focusedField, equals: .sukuBungaFixed)
                
                TextFieldView(textFieldType: TextFieldType.periodeBungaFixed,
                              value: $periodeBungaFixed)
                .focused($focusedField, equals: .periodeBungaFixed)
                
                TextFieldView(textFieldType: TextFieldType.sukuBungaFloating,
                              value: $sukuBungaFloating)
                .focused($focusedField, equals: .sukuBungaFloating)
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
