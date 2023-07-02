//
//  SimulationViewModel.swift
//  MiniTwo
//
//  Created by Rajif Afif on 02/07/23.
//

import Foundation

class SimulationViewModel: ObservableObject {
    @Published var hargaProperti = 0.0
    @Published var nominalDP = 0.0
    @Published var masaTenor = 10.0
    @Published var gaji = 0.0
    
    init(hargaProperti: Double = 10.0, nominalDP: Double = 0.0, masaTenor: Double = 10, gaji: Double = 0.0) {
        self.hargaProperti = hargaProperti
        self.nominalDP = nominalDP
        self.masaTenor = masaTenor
        self.gaji = gaji
    }
}

class Simulation: SimulationViewModel {}

class BankSimulation {
    @Published var bankProgram: BankProgram
    @Published var simulation: Simulation
    
    init(bankProgram: BankProgram, simulation: Simulation) {
        self.bankProgram = bankProgram
        self.simulation = simulation
    }
}

func calculateMonthlyPayment(pokok: Double, interestRate: Double, tenorYear: Int) -> Double {
    let monthlyInterestRate = interestRate / 12.0 / 100.0
    let numberOfPayments = Double(tenorYear * 12)
    
    let numerator = pokok * monthlyInterestRate
    let denominator = 1.0 - pow(1.0 + monthlyInterestRate, -numberOfPayments)
    
    let monthlyPayment = numerator / denominator
    
    return ceil(monthlyPayment)
}
