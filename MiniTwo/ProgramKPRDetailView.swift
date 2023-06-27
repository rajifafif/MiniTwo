//
//  ProgramKPRDetailView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 25/06/23.
//

import SwiftUI

struct ProgramKPRDetailView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Fixed 3 Tahun")
                .font(.title2)
                .fontWeight(.heavy)
                .padding(.bottom)
            
            VStack {
                HStack {
                    Text("Informasi KPR")
                        .font(.title3.bold())
                    Spacer()
                }
                
                Divider()
                
                VStack(spacing: 8) {
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
                    Spacer()
                    Text("\(3) tahun")
                }
                .font(.title3.bold())
                
                Divider()
                
                VStack(spacing: 8) {
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
                    Spacer()
                    Text("\(12) tahun")
                }
                .font(.title3.bold())
                
                Divider()
                
                VStack(spacing: 8) {
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
            
            Spacer()
        }
        .padding()
    }
}

struct ProgramKPRDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRDetailView()
    }
}
