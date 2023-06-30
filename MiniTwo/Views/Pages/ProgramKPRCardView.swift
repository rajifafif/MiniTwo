//
//  ProgramKPRCardView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 25/06/23.
//

import SwiftUI

struct ProgramKPRCardView: View {
    
    var angsuran = 10_000_000
    var pemasukan = 15_000_000
    
    @ObservedObject var sheetManager = SheetManager.shared
    
    var body: some View {
        VStack {
            HStack {
                Image("cimb")
                    .resizable()
                    .frame(width: 60, height: 43)
                    .cornerRadius(8)
                    .padding(.trailing, 10)
                
                Text("Niaga - Fixed 3 tahun")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
            }
            
            Divider()
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Rasio Kredit")
                        Button(action: {
                            sheetManager.infoIsPresented.toggle()
                        }, label: {
                            Image(systemName: "info.circle")
                                .foregroundColor(.blue)
                        })
                    }
                    Text(angsuran > pemasukan * 50/100 ? "Poor" : angsuran >= pemasukan * 43/100 && angsuran <= pemasukan * 49/100 ? "Uncertain" : angsuran >= pemasukan * 37/100 && angsuran <= pemasukan * 42/100 ? "Fair" : angsuran >= pemasukan * 20/100 && angsuran <= pemasukan * 36/100 ? "Good": "Excellent")
                        .font(.body.bold())
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .background(angsuran > pemasukan * 50/100 ? Color(red: 152/255, green: 27/255, blue: 37/255) : angsuran >= pemasukan * 43/100 && angsuran <= pemasukan * 49/100 ? .red : angsuran >= pemasukan * 37/100 && angsuran <= pemasukan * 42/100 ? .orange : angsuran >= pemasukan * 20/100 && angsuran <= pemasukan * 36/100 ? .green : .blue)
                        .clipShape(Capsule())
                }
                
                Spacer()
                
                VStack {
                    Text("Fix Rate")
                    Text(String(3.75) + "%")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Min Tenor")
                    Text("\(12) tahun")
                }
            }
            .font(.body)
        }
        .padding()
        .background(.white)
        .border(Color(UIColor.systemGray4))
        .sheet(isPresented: $sheetManager.infoIsPresented) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Rasio Kredit")
                    .font(.title3.bold())
                Text("Perbandingan angsuran hutang dan pemasukan")
                
                HStack(spacing: 10) {
                    VStack(alignment: .leading, spacing: 15) {
                        RasioKreditView(text: "Poor",
                                        background: Color(red: 152/255, green: 27/255, blue: 37/255))
                        
                        RasioKreditView(text: "Uncertain",
                                        background: .red)
                        
                        RasioKreditView(text: "Poor",
                                        background: .orange)
                        
                        RasioKreditView(text: "Poor",
                                        background: .green)
                        
                        RasioKreditView(text: "Poor",
                                        background: .blue)
                    }
                    
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Angsuran > 50% Pemasukan")
                        Text("Angsuran 43% -  49% Pemasukan")
                        Text("Angsuran 37% - 42% Pemasukan")
                        Text("Angsuran 20% - 36% Pemasukan")
                        Text("Angsuran < 20% Pemasukan")
                        
                    }
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
            }
            .padding()
            .presentationDetents([.height(335)])
        }
        
    }
}

struct RasioKreditView: View {
    var text: String
    var background: Color
    var body: some View {
        Text(text)
            .font(.body.bold())
            .foregroundColor(.white)
            .padding(.horizontal)
            .background(background)
            .clipShape(Capsule())
    }
}

struct ProgramKPRCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRCardView()
            .padding()
    }
}
