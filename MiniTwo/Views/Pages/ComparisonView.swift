//
//  ComparisonView.swift
//  MiniTwo
//
//  Created by Rajif Afif on 03/07/23.
//

import SwiftUI

struct ComparisonView: View {
    
    @EnvironmentObject var compareModel: CompareViewModel
    
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
                                if (compareModel.programCompared.count > 0) {
                                    VStack{
                                        Image(compareModel.programCompared[0].bankProgram?.bank.logo ?? "")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 60)
                                    }
                                    .frame(width: geometry.size.width / 3)
                                } else {
                                    Spacer()
                                        .frame(width: geometry.size.width / 3)
                                }
                                
                                if (compareModel.programCompared.count > 1) {
                                    VStack{
                                        Image(compareModel.programCompared[1].bankProgram?.bank.logo ?? "")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 60)
                                    }
                                    .frame(width: geometry.size.width / 3)
                                } else {
                                    Spacer()
                                        .frame(width: geometry.size.width / 3)
                                }
                            
                                    
                                if (compareModel.programCompared.count > 2) {
                                    VStack{
                                        Image(compareModel.programCompared[2].bankProgram?.bank.logo ?? "")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 60)
                                    }
                                    .frame(width: geometry.size.width / 3)
                                } else {
                                    Spacer()
                                        .frame(width: geometry.size.width / 3)
                                }
                            }
                            
                            
                            VStack{
                                HStack {
                                    Text("Angsuran Fix")
                                    Spacer()
                                }
                                HStack {
                                    if (compareModel.programCompared.count > 0) {
                                        VStack{
                                            Pills(text: "aa", color: .blue)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                        .frame(width: geometry.size.width / 3)
                                    }
                                    
                                    if (compareModel.programCompared.count > 1) {
                                        VStack{
                                            Pills(text: "10000000", color: .red)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                
                                        
                                    if (compareModel.programCompared.count > 2) {
                                        VStack{
                                            Pills(text: "10000000", color: .green)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                }
                            }
                            
                            
                            VStack{
                                HStack {
                                    Text("Periode Fix")
                                    Spacer()
                                }
                                HStack {
                                    if (compareModel.programCompared.count > 0) {
                                        VStack{
                                            Pills(text: "10000000", color: .blue)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                    
                                    if (compareModel.programCompared.count > 1) {
                                        VStack{
                                            Pills(text: "10000000", color: .red)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                
                                        
                                    if (compareModel.programCompared.count > 2) {
                                        VStack{
                                            Pills(text: "10000000", color: .green)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                }
                            }
                            
                            
                            VStack{
                                HStack {
                                    Text("Angsuran Floating")
                                    Spacer()
                                }
                                HStack {
                                    if (compareModel.programCompared.count > 0) {
                                        VStack{
                                            Pills(text: "10000000", color: .blue)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                    
                                    if (compareModel.programCompared.count > 1) {
                                        VStack{
                                            Pills(text: "10000000", color: .red)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                
                                        
                                    if (compareModel.programCompared.count > 2) {
                                        VStack{
                                            Pills(text: "10000000", color: .green)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                }
                            }
                            
                            
                            
                            VStack{
                                HStack {
                                    Text("Periode Floating")
                                    Spacer()
                                }
                                HStack {
                                    if (compareModel.programCompared.count > 0) {
                                        VStack{
                                            Pills(text: "10000000", color: .blue)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                    
                                    if (compareModel.programCompared.count > 1) {
                                        VStack{
                                            Pills(text: "10000000", color: .red)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                
                                        
                                    if (compareModel.programCompared.count > 2) {
                                        VStack{
                                            Pills(text: "10000000", color: .green)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                }
                            }
                            
                            
                            VStack{
                                HStack {
                                    Text("Total Hutang")
                                    Spacer()
                                }
                                HStack {
                                    if (compareModel.programCompared.count > 0) {
                                        VStack{
                                            Pills(text: "10000000", color: .blue)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                    
                                    if (compareModel.programCompared.count > 1) {
                                        VStack{
                                            Pills(text: "10000000", color: .red)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
                                
                                        
                                    if (compareModel.programCompared.count > 2) {
                                        VStack{
                                            Pills(text: "10000000", color: .green)
                                        }
                                        .frame(width: geometry.size.width / 3)
                                    } else {
                                        Spacer()
                                            .frame(width: geometry.size.width / 3)
                                    }
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
            .environmentObject(CompareViewModel())
//        ComparisonView()
//            .environmentObject(compareModel)
        
    }
}
