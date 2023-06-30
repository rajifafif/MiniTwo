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
                ZStack {
                    Rectangle()
                        .fill(.blue.opacity(0.1))
                        .ignoresSafeArea()
                    
                    ProgramKPRCardView()
                        .padding(.horizontal)
                }
                
                HStack {
                    Spacer()
                    Text("Hasil simulasi KPR hanya estimasi sebagai acuan. Hubungi Bank pilihan Anda untuk konsultasi pembiayaan.")
                        .font(.body)
                        .foregroundColor(Color(red: 178/255, green: 78/255, blue: 78/255))
                    Spacer()
                }
                .padding(.vertical, 10)
                .background(.yellow.opacity(0.1))
                .cornerRadius(8)
                .padding(.horizontal)
                
                VStack {
                    HStack {
                        Text("Angsuran Periode Fixed")
                            .fontWeight(.bold)
                        
                        Button(action: {
                            selectedState = SheetState.fixed
                            sheetManager.infoIsPresented.toggle()
                        }, label: {
                            Image(systemName: "info.circle")
                        })
                        
                        Spacer()
                        Text(String(3.99) + "%")
                            .fontWeight(.bold)
                    }
                    .font(.body)
                    
                    Divider()
                    
                    VStack(spacing: 4) {
                        HStack {
                            Text("Nilai Angsuran")
                            Spacer()
                            Text("Rp\(7000000) / bulan")
                                .fontWeight(.bold)
                        }
                        
                        HStack {
                            Text("Periode Tahun")
                            Spacer()
                            Text("1 - 3")
                                .fontWeight(.bold)
                        }
                    }
                    .font(.body)
                }
                .padding()
                .border(Color(UIColor.systemGray4))
                .padding(.horizontal)
                
                VStack {
                    HStack {
                        Text("Angsuran Periode Floating")
                            .fontWeight(.bold)
                        
                        Button(action: {
                            selectedState = SheetState.floating
                            sheetManager.infoIsPresented.toggle()
                        }, label: {
                            Image(systemName: "info.circle")
                        })
                        
                        Spacer()
                        Text(String(13.5) + "%")
                            .fontWeight(.bold)
                    }
                    .font(.body)
                    
                    Divider()
                    
                    VStack(spacing: 4) {
                        HStack {
                            Text("Nilai Angsuran")
                            Spacer()
                            Text("Rp\(12000000) / bulan")
                                .fontWeight(.bold)
                        }
                        
                        HStack {
                            Text("Periode Tahun")
                            Spacer()
                            Text("4 - 15")
                                .fontWeight(.bold)
                        }
                    }
                    .font(.body)
                }
                .padding()
                .border(Color(UIColor.systemGray4))
                .padding(.horizontal)
                
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
                .padding(.horizontal)
                
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
            }
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
