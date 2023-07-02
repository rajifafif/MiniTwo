//
//  ProgramSelectedComponent.swift
//  MiniTwo
//
//  Created by Rajif Afif on 03/07/23.
//

import SwiftUI

struct ProgramSelectedComponent: View {
    
    @ObservedObject var compareModel: CompareViewModel
    
    @State var comparisonSheet: Bool = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 1)
                
                HStack{
                    Text("Bandingkan \(compareModel.programCompared.count) Program")
                    Spacer()
                    
                    Button(action: {
                        compareModel.removeAll()
                    }, label: {
                        Image(systemName: "xmark.square.fill")
                            .font(.system(size: 27))
                            .foregroundColor(.black)
                    })
                }
                .padding(.horizontal)
                
                HStack{
                    if compareModel.programCompared.count > 0 {
                        Image(compareModel.programCompared[0].bankProgram?.bank.logo
                              ?? "")
                        .resizable()
                        .frame(width: 100, height: 75)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                        .onTapGesture {
                            compareModel.removePlan(plan: compareModel.programCompared[0])
                        }
                    } else {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.gray)
                            .frame(width: 100, height: 75)
                    }
                    Spacer()
                    if compareModel.programCompared.count > 1 {
                        Image(compareModel.programCompared[1].bankProgram?.bank.logo
                              ?? "")
                        .resizable()
                        .frame(width: 100, height: 75)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                        .onTapGesture {
                            compareModel.removePlan(plan: compareModel.programCompared[1])
                        }
                    } else {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.gray)
                            .frame(width: 100, height: 75)
                    }
                    Spacer()
                    if compareModel.programCompared.count == 3 {
                        Image(compareModel.programCompared[2].bankProgram?.bank.logo
                              ?? "")
                        .resizable()
                        .frame(width: 100, height: 75)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                        .onTapGesture {
                            compareModel.removePlan(plan: compareModel.programCompared[2])
                        }
                        
                    } else {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.gray)
                            .frame(width: 100, height: 75)
                    }
                }
                .padding(.horizontal)
                
                Button(action: {
                    comparisonSheet.toggle()
                }, label: {
                    Text("Bandingkan Program")
                        .font(.body.bold())
                        .foregroundColor(.white)
                        .padding(.all, 12)
                        .frame(width: UIScreen.main.bounds.width - 35)
                        .background(.blue)
                        .cornerRadius(8)
                })
                .padding(.bottom, 40)
                .padding(.top, 15)
                
                Spacer()
            }
            .sheet(isPresented: $comparisonSheet) {
                ComparisonView()
                    .environmentObject(compareModel)
//                ComparisonView(compareModel: compareModel)
//                    .environmentObject(compareModel)
            }
        }
        .frame(height: 150)
    }
}

struct ProgramSelectedComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRView()
            .environmentObject(Simulation())
            .environmentObject(CompareViewModel())
    }
}
