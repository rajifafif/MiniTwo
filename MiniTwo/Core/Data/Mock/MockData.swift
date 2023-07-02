//
//  MockData.swift
//  MiniTwo
//
//  Created by Rajif Afif on 21/06/23.
//

import Foundation

struct MockData {
    
//    static var idealPlan = Plan(propertyPrice: 1_000_000_000.00, downPaymentAmount: 30_000_000, tenor: 20, fixInterests: [3.75, 3.75, 3.75], floatingInterests: [11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11])
//    static var shortPlan = Plan(propertyPrice: 1_000_000_000.00, downPaymentAmount: 30_000_000, tenor: 10, fixInterests: [7.40, 7.40, 8.40, 8.40, 10.40, 7.40, 7.40, 7.40, 7.40, 7.40], floatingInterests: [11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11])
    
    static var banks = [
        Bank(name: "Bank BNI", logo: "logo-bni"),
        Bank(name: "Bank BTN", logo: "logo-bni"),
        Bank(name: "Bank CIMB Niaga", logo: "logo-bni"),
        Bank(name: "OCBC NISP", logo: "logo-bni"),
    ]
    
    static var bankPrograms = [
        BankProgram(name: "BNI Griya", bank: banks[0], description: "Biaya Akad mulai dari Rp 10 Juta", fixInterests: [11], floatingInterests: [13.5], minTenor: 12, maxTenor: 20),
        BankProgram(name: "BNI Griya Dua", bank: banks[0], description: "Biaya Akad mulai dari Rp 10 Juta", fixInterests: [3.77], floatingInterests: [1], minTenor: 12, maxTenor: 20),
    ]
    
}
