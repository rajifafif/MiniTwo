//
//  ProgramKPRDetailView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 25/06/23.
//

import SwiftUI

enum SheetState {
    case fixed, floating
}

struct ProgramKPRDetailView: View {
    
    @ObservedObject var sheetManager = SheetManager.shared
    @State private var selectedState = SheetState.fixed
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                
                Text("Hasil simulasi KPR hanya estimasi sebagai acuan. Hubungi Bank pilihan anda untuk konsultasi pembiayaan.")
               
                ProgramKPRCardView()
                
                VStack {
                    HStack {
                        Text("Informasi KPR")
                            .font(.body)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    Divider()
                    
                    VStack(spacing: 4) {
                        HStack {
                            Text("Pemasukan")
                            Spacer()
                            Text("Rp\(36000000) / bulan")
                        }
                        
                        HStack {
                            Text("Plafon pinjaman")
                            Spacer()
                            Text("Rp\(1000000000)")
                        }
                        
                        HStack {
                            Text("Tenor")
                            Spacer()
                            Text("\(15) tahun")
                        }
                        
                        HStack {
                            Text("Estimasi Biaya Awal")
                            Spacer()
                            Text("Rp\(30000000)")
                        }
                        
                        HStack {
                            Text("Estimasi Biaya Sertifikat")
                            Spacer()
                            Text("Rp\(70000000)")
                        }
                    }
                    .font(.body)
                }
                .padding()
                .border(Color(UIColor.systemGray4))
                
                VStack {
                    HStack {
                        Text("Periode Fixed")
                            .fontWeight(.bold)
                        
                        Button(action: {
                            selectedState = SheetState.fixed
                            sheetManager.infoIsPresented.toggle()
                        }, label: {
                            Image(systemName: "info.circle")
                        })
                        
                        Spacer()
                        Text("\(3) tahun")
                            .fontWeight(.bold)
                    }
                    .font(.body)
                    
                    Divider()
                    
                    VStack(spacing: 4) {
                        HStack {
                            Text("Rate")
                            Spacer()
                            Text(String(3.99) + "%")
                        }
                        
                        HStack {
                            Text("Nilai Cicilan")
                            Spacer()
                            Text("Rp\(7000000) / bulan")
                        }
                    }
                    .font(.body)
                }
                .padding()
                .border(Color(UIColor.systemGray4))
                
                VStack {
                    HStack {
                        Text("Periode Floating")
                            .fontWeight(.bold)
                        
                        Button(action: {
                            selectedState = SheetState.floating
                            sheetManager.infoIsPresented.toggle()
                        }, label: {
                            Image(systemName: "info.circle")
                        })
                        
                        Spacer()
                        Text("\(12) tahun")
                            .fontWeight(.bold)
                    }
                    .font(.body)
                    
                    Divider()
                    
                    VStack(spacing: 4) {
                        HStack {
                            Text("Rate")
                            Spacer()
                            Text(String(13.5) + "%")
                                .foregroundColor(.blue)
                                .bold()
                        }
                        
                        HStack {
                            Text("Nilai Cicilan")
                            Spacer()
                            Text("Rp\(12000000) / bulan")
                                .foregroundColor(.green)
                                .bold()
                        }
                    }
                    .font(.body)
                }
                .padding()
                .border(Color(UIColor.systemGray4))
                
                Button(action: {
                    // add action here ngab
                    
                }, label: {
                    Text("Simpan")
                        .font(.body.bold())
                        .foregroundColor(.white)
                        .padding(.all, 12)
                        .frame(width: UIScreen.main.bounds.width - 35)
                        .background(.blue)
                        .cornerRadius(8)
                })
                .padding(.vertical, 10)
                
                Spacer()
            }
            .padding()
            .sheet(isPresented: $sheetManager.infoIsPresented) {
                VStack(alignment: .leading, spacing: 15) {
                    switch selectedState {
                    case .fixed:
                        DescriptionView(title: "Periode Fixed",
                                        deskripsi: "Periode Fixed adalah periode berlakunya suku bunga fixed yang termasuk dalam tenor pengajuan KPR.")
                    case .floating:
                        DescriptionView(title: "Periode Floating",
                                        deskripsi: "Periode Floating adalah periode berlakunya suku bunga tidak tetap yang akan dikenakan oleh bank kepada debitur KPR dari berakhirnya periode  fixed hingga akhir masa kredit.")
                    }
                    
                    Button(action: {
                        sheetManager.infoIsPresented = false
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Mengerti")
                                .font(.body.bold())
                            Spacer()
                        }
                    })
                    .padding(.top, 5)
                }
                .padding()
                .presentationDetents([.height(235)])
            }
            .navigationTitle("Program KPR")
        }
    }
}

struct ProgramKPRDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRDetailView()
    }
}
