//
//  ComparisonView.swift
//  MiniTwo
//
//  Created by Rajif Afif on 03/07/23.
//

import SwiftUI

struct ComparisonView: View {
    
//    @ObservedObject var compareModel: CompareViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: 1)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color(.black), lineWidth: 1)
                    )
                
                
                VStack {
                    GeometryReader { geometry in
                        VStack {
                            HStack {
                                Image("logo-bni")
                                    .frame(width: geometry.size.width / 3)
                                
                                Image("logo-bni")
                                    .frame(width: geometry.size.width / 3)
                            
                                
                                Image("logo-bni")
                                    .frame(width: geometry.size.width / 3)
                            }
                            
                            
                            VStack{
                                HStack {
                                    Text("Angsuran Fix")
                                    Spacer()
                                }
                                HStack {
                                    Pills(text: "10000000", color: .blue)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "100000001", color: .red)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "10000000", color: .green)
                                        .frame(width: geometry.size.width / 3)
                                }
                            }
                            
                            
                            VStack{
                                HStack {
                                    Text("Periode Fix")
                                    Spacer()
                                }
                                HStack {
                                    Pills(text: "10 Tahun", color: .blue)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "5 Tahun", color: .red)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "3 Tahun", color: .green)
                                        .frame(width: geometry.size.width / 3)
                                }
                            }
                            
                            
                            VStack{
                                HStack {
                                    Text("Angsuran Floating")
                                    Spacer()
                                }
                                HStack {
                                    Pills(text: "10000000", color: .blue)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "100000001", color: .red)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "10000000", color: .green)
                                        .frame(width: geometry.size.width / 3)
                                }
                            }
                            
                            
                            
                            VStack{
                                HStack {
                                    Text("Periode Floating")
                                    Spacer()
                                }
                                HStack {
                                    Pills(text: "10 Tahun", color: .blue)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "5 Tahun", color: .red)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "3 Tahun", color: .green)
                                        .frame(width: geometry.size.width / 3)
                                }
                            }
                            
                            
                            VStack{
                                HStack {
                                    Text("Total Hutang")
                                    Spacer()
                                }
                                HStack {
                                    Pills(text: "10000000", color: .blue)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "100000001", color: .red)
                                        .frame(width: geometry.size.width / 3)
                                    
                                    Pills(text: "10000000", color: .green)
                                        .frame(width: geometry.size.width / 3)
                                }
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
            .padding()
            .navigationTitle("Perbandingan KPR")
            Button(action: {
//                        comparisonSheet.toggle()
            }, label: {
                Text("Simpan Semua")
                    .font(.body.bold())
                    .foregroundColor(.white)
                    .padding(.all, 12)
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(.blue)
                    .cornerRadius(8)
            })
        }
    }
}

struct ComparisonView_Previews: PreviewProvider {
    static var previews: some View {
        ComparisonView()
//        ComparisonView()
//            .environmentObject(compareModel)
        
    }
}
