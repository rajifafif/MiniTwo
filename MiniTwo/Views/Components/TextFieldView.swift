//
//  TextFieldView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 27/06/23.
//

import SwiftUI

enum TextFieldType: String {
    case hargaProperti = "Harga properti"
    case uangMuka = "Uang muka"
    case tenor = "Tenor (tahun)"
    case gaji = "Gaji saat ini"
    case sukuBungaFixed = "Suku bunga fixed"
    case periodeBungaFixed = "Periode bunga fixed (tahun)"
    case sukuBungaFloating = "Suku bunga floating"
}

enum FocusedField {
    case hargaProperti
    case uangMuka
    case tenor
    case gaji
    case sukuBungaFixed
    case periodeBungaFixed
    case sukuBungaFloating
}

struct TextFieldView: View {
    
    var textFieldType: TextFieldType
    @Binding var value: Double
    
    @ObservedObject var sheetManager = SheetManager.shared
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text(textFieldType.rawValue)
                    .foregroundColor(.black)
                    .font(.body)
                Button(action: {
                    sheetManager.textFieldType = textFieldType
                    sheetManager.infoIsPresented.toggle()
                }, label: {
                    Image(systemName: "info.circle")
                })
            }
            
            switch textFieldType {
            case .hargaProperti:
                TextField("IDR 1,000,000,000",
                          value: $value,
                          format: .number)
//                            format: .currency(code: "IDR"))
//                .keyboardType(.decimalPad)
                .textFieldStyle()
                
            case .uangMuka:
                TextField("IDR 100,000,000",
                          value: $value,
                          format: .number)
//                            format: .currency(code: "IDR"))
                .keyboardType(.decimalPad)
                .textFieldStyle()
                
            case .tenor:
                TextField("10",
                          value: $value,
                          format: .number)
//                            format: .currency(code: "IDR"))
                .keyboardType(.numberPad)
                .textFieldStyle()
                
            case .gaji:
                TextField("IDR 10,000,000",
                          value: $value,
                          format: .number)
//                            format: .currency(code: "IDR"))
                .keyboardType(.decimalPad)
                .textFieldStyle()
                
            case .sukuBungaFixed:
                TextField("IDR 8,000,000",
                          value: $value,
                          format: .number)
//                            format: .currency(code: "IDR"))
                .keyboardType(.decimalPad)
                .textFieldStyle()
                
            case .periodeBungaFixed:
                TextField("10",
                          value: $value,
                          format: .number)
                .keyboardType(.numberPad)
                .textFieldStyle()
                
            case .sukuBungaFloating:
                TextField("IDR 100,000,000",
                          value: $value,
                          format: .percent)
                .keyboardType(.decimalPad)
                .textFieldStyle()
                
            }
        }
        .sheet(isPresented: $sheetManager.infoIsPresented) {
            InfoSheetView(textFieldType: sheetManager.textFieldType)
                .preferredColorScheme(.light)
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textFieldType: TextFieldType.hargaProperti,
                      value: .constant(1000000000.0))
    }
}
