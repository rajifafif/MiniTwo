//
//  SimulationViewModel.swift
//  MiniTwo
//
//  Created by Rajif Afif on 02/07/23.
//

import Foundation

//class SimulationViewModel: ObservableObject {
//    @Published var hargaProperti = 0.0
//    @Published var nominalDP = 0.0
//    @Published var masaTenor = 10.0
//    @Published var gaji = 0.0
//
//    init(hargaProperti: Double = 10.0, nominalDP: Double = 0.0, masaTenor: Double = 10, gaji: Double = 0.0) {
//        self.hargaProperti = hargaProperti
//        self.nominalDP = nominalDP
//        self.masaTenor = masaTenor
//        self.gaji = gaji
//    }
//}

class Simulation: ObservableObject {
    @Published var hargaProperti = 0.0
    @Published var nominalDP = 0.0
    @Published var masaTenor = 10.0
    @Published var gaji = 0.0
    var pokok = 0.0
    var biayaAkad = 0.0
    var estBiayaAkad = 0.0
    var estBiayaSertifikat = 0.0
    var pembayaranTertinggi = 0.0
    
    init(hargaProperti: Double = 10.0, nominalDP: Double = 0.0, masaTenor: Double = 10, gaji: Double = 0.0) {
        self.hargaProperti = hargaProperti
        self.nominalDP = nominalDP
        self.masaTenor = masaTenor
        self.gaji = gaji
        
        self.pokok = self.hargaProperti - self.nominalDP
        self.biayaAkad = self.pokok / 10
        
        let biayaProvisi = self.pokok / 100
        let biayaAdministrasiKredit = self.pokok / 1000
        let biayaAsuransi = self.pokok / 100 * 3
        let biayaNotasi = self.pokok / 100 * 2
        let biayaAppraisal = self.pokok / 100 * 0.75
        let biayaBPHTB = self.pokok / 100 * 5
        self.estBiayaAkad = biayaProvisi + biayaAdministrasiKredit + biayaAsuransi + biayaNotasi + biayaAppraisal
        
        self.estBiayaSertifikat = biayaBPHTB
    }
}

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

extension Decimal {
    var doubleValue:Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}

func programPaymentList(plan: Plan, program: BankProgram) -> [Double] {
    
    var list: [Double] = []
    var currentYear = 1
    var currentInterest = program.fixInterests[0]
    
    let totalMonth = plan.tenor * 12
    var totalPokok = plan.propertyPrice.doubleValue
    if let totalDPDouble = plan.downPaymentAmount?.doubleValue {
        totalPokok = totalPokok - totalDPDouble
    }
    
    for currentMonth in 1...totalMonth {
        let currentMonthPayment = calculateMonthlyPayment(
            pokok: totalPokok,
            interestRate: Double(currentInterest),
            tenorYear: plan.tenor
        )
        
        list.append(currentMonthPayment)
    }
    
    
    return list
}
