//
//  InfoSheetView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 28/06/23.
//

import SwiftUI

class SheetManager: ObservableObject {
    @Published var infoIsPresented = false
    @Published var textFieldType = TextFieldType.hargaProperti
    static let shared = SheetManager()
}

struct InfoSheetView: View {
    
    @Environment(\.dismiss) var dismissed
    var textFieldType: TextFieldType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            switch textFieldType {
            case .hargaProperti:
                DescriptionView(title: "Harga Properti",
                                deskripsi: "Harga properti adalah jumlah uang yang harus dibayarkan untuk membeli rumah. Masukkan harga properti untuk rumah impian Anda.")
            case .uangMuka:
                DescriptionView(title: "Uang Muka",
                                deskripsi: "Uang Muka adalah jumlah uang yang harus dibayarkan oleh debitur KPR sebagai pembayaran awal saat membeli rumah dengan menggunakan fasilitas pinjaman KPR.")
            case .tenor:
                DescriptionView(title: "Tenor",
                                deskripsi: "Tenor adalah jangka waktu yang ditetapkan oleh bank untuk melunasi pinjaman KPR. Biasanya, tenor KPR rumah dapat berkisar antara 5 tahun hingga 30 tahun.")
            case .gaji:
                DescriptionView(title: "Gaji Saat Ini",
                                deskripsi: "Masukkan gaji bulanan saat ini untuk mendapatkan program KPR yang sesuai dengan situasi finansial Anda dalam proses membeli rumah.")
            case .sukuBungaFixed:
                DescriptionView(title: "Suku Bunga Fixed",
                                deskripsi: "Suku Bunga Fixed adalah suku bunga yang bersifat tetap dalam jangka waktu tertentu.")
            case .periodeBungaFixed:
                DescriptionView(title: "Periode Bunga Fixed",
                                deskripsi: "Periode Bunga Fixed adalah periode berlakunya suku bunga fixed yang termasuk dalam tenor pengajuan KPR.")
            case .sukuBungaFloating:
                DescriptionView(title: "Suku Bunga Floating",
                                deskripsi: "Suku Bunga Floating adalah suku bunga tidak tetap yang akan dikenakan oleh bank kepada debitur KPR dari berakhirnya masa bunga fixed hingga akhir masa kredit. Suku Bunga Floating mengikuti ketentuan masing-masing bank.")
            }
            
            Button(action: {
                dismissed()
            }, label: {
                HStack {
                    Spacer()
                    Text("Mengerti")
                        .font(.body.bold())
                    Spacer()
                }
            })
            
        }
        .padding()
        .presentationDetents([.height(235)])
    }
}

struct DescriptionView: View {
    var title: String
    var deskripsi: String
    
    var body: some View {
        Text(title)
            .font(.title3.bold())
        Text(deskripsi)
            .font(.body)
    }
}

struct InfoSheetView_Previews: PreviewProvider {
    static var previews: some View {
        InfoSheetView(textFieldType: TextFieldType.sukuBungaFloating)
    }
}
