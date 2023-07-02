//
//  ProgramKPRView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 25/06/23.
//

import SwiftUI

struct ProgramKPRView: View {
    
    @EnvironmentObject var simulation: Simulation
    
    @State var programs: [BankProgram] = []
    
    @State private var isComparing = true
    
    @StateObject var compareModel = CompareViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack{
                ScrollView{
                    VStack(spacing: 15) {
                        ForEach(programs, id: \.id) { program in
                            ProgramKPRCardView(bankSimulation: BankSimulation(
                                bankProgram: program,
                                simulation: Simulation(
                                    hargaProperti: simulation.hargaProperti,
                                    nominalDP: simulation.nominalDP,
                                    masaTenor: simulation.masaTenor,
                                    gaji: simulation.gaji
                                ))
                            )
                            .onTapGesture {
                                compareModel.addProgram(
                                    plan: Plan(
                                        name: "Yeet",
                                        propertyPrice: Decimal(simulation.hargaProperti),
                                        tenor: Int(simulation.masaTenor),
                                        bankProgram: program
                                    )
                                )
                            }
                        }
                        
                    }
                    .navigationTitle("Program KPR")
                    .padding(.horizontal)
                }
                
                VStack{
                    Spacer()
                    
                    ProgramSelectedComponent(compareModel: compareModel)
//                        .environmentObject(compareModel)
                }
            }
            
        }
        .onAppear{
            programs = MockData.bankPrograms
        }
    }
}

struct ProgramKPRView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRView()
            .environmentObject(Simulation())
    }
}
