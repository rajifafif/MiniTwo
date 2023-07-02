//
//  ProgramKPRView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 25/06/23.
//

import SwiftUI

struct ProgramKPRView: View {
    
    @EnvironmentObject var simulation: SimulationViewModel
    
    @State var programs: [BankProgram] = []
    
    @State private var isComparing = true
    
    var body: some View {
        NavigationStack {
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
                    }

                }
                .navigationTitle("Program KPR")
                .padding(.horizontal)
            }
//            .toolbar {
//                Button(action: {
//                    isComparing.toggle()
//                }, label: {
//                    Text("Bandingkan")
//                        .foregroundColor(isComparing == true ? .gray : .blue)
//                })
//            }
//                .listStyle(.plain)
        }
        .onAppear{
            programs = MockData.bankPrograms
        }
    }
}

struct ProgramKPRView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRView()
            .environmentObject(SimulationViewModel())
    }
}
