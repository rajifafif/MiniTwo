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
        Bank(name: "Bank BNI", logo: "bni"),
        Bank(name: "Bank BTN", logo: "btn"),
        Bank(name: "OCBC NISP", logo: "ocbc"),
        Bank(name: "Maybank", logo: "maybank"),
        Bank(name: "PermataBank", logo: "permata"),
        Bank(name: "Mandiri", logo: "mandiri"),
    ]
    
    static var bankPrograms = [
        BankProgram(name: "BNI Griya - Tier 1 2023 Fixed 1 Tahun", bank: banks[0], description: "Biaya akad mulai dari Rp", fixInterests: [4.5], floatingInterests: [13.5], minTenor: 3, maxTenor: 20, fixDuration: 1),
        BankProgram(name: "BNI Griya - Tier 1 2023 Fixed 2 Tahun", bank: banks[0], description: "Biaya akad mulai dari Rp", fixInterests: [5.25], floatingInterests: [13.5], minTenor: 5, maxTenor: 20, fixDuration: 2),
        BankProgram(name: "BNI Griya - Tier 1 2023 Fixed 3 Tahun", bank: banks[0], description: "Biaya akad mulai dari Rp", fixInterests: [5.25], floatingInterests: [13.5], minTenor: 7, maxTenor: 20, fixDuration: 3),
        BankProgram(name: "BNI Griya - Tier 1 2023 Fixed 4 Tahun", bank: banks[0], description: "Biaya akad mulai dari Rp", fixInterests: [6.75], floatingInterests: [13.5], minTenor: 7, maxTenor: 20, fixDuration: 4),
        
        BankProgram(name: "KPR Fixed Income Primary 8.99% Fixed 5 Tahun", bank: banks[1], description: "Biaya akad mulai dari Rp", fixInterests: [8.99], floatingInterests: [13.5], minTenor: 1, maxTenor: 30, fixDuration: 5),
        BankProgram(name: "KPR Fixed Income Primary 7.59% Fixed 2 Tahun", bank: banks[1], description: "Biaya akad mulai dari Rp", fixInterests: [7.59], floatingInterests: [13.5], minTenor: 1, maxTenor: 30, fixDuration: 2),
        BankProgram(name: "KPR Fixed Income Primary 8.39% Fixed 3 Tahun", bank: banks[1], description: "Biaya akad mulai dari Rp", fixInterests: [8.39], floatingInterests: [13.5], minTenor: 1, maxTenor: 30, fixDuration: 3),
        BankProgram(name: "KPR Non-Fixed Income Secondary 8.99% Fixed 3 Tahun", bank: banks[1], description: "Biaya akad mulai dari Rp", fixInterests: [8.99], floatingInterests: [13.5], minTenor: 1, maxTenor: 30, fixDuration: 3),
        BankProgram(name: "KPR Primary 1.99% Fixed 1 Tahun", bank: banks[1], description: "Biaya akad mulai dari Rp", fixInterests: [1.99], floatingInterests: [13.5], minTenor: 1, maxTenor: 30, fixDuration: 1),
        
        BankProgram(name: "KPR Kendali Primary 2.82% Fixed 1 Tahun", bank: banks[2], description: "Biaya akad mulai dari Rp", fixInterests: [2.82], floatingInterests: [13.5], minTenor: 5, maxTenor: 25, fixDuration: 1),
        BankProgram(name: "KPR Kendali Primary 4.75% Fixed 2 Tahun", bank: banks[2], description: "Biaya akad mulai dari Rp", fixInterests: [4.75], floatingInterests: [13.5], minTenor: 5, maxTenor: 25, fixDuration: 2),
        
        BankProgram(name: "KPR/KPA Primary 4.75% Fixed 3 Tahun", bank: banks[3], description: "Biaya akad mulai dari Rp", fixInterests: [4.75], floatingInterests: [13.5], minTenor: 7, maxTenor: 20, fixDuration: 3),
        BankProgram(name: "KPR/KPA Primary 5.75% Fixed 3 Tahun", bank: banks[3], description: "Biaya akad mulai dari Rp", fixInterests: [5.75], floatingInterests: [13.5], minTenor: 5, maxTenor: 20, fixDuration: 3),
        
        BankProgram(name: "KPR/KPA Primary 4.50% Fixed 3 Tahun", bank: banks[4], description: "Biaya akad mulai dari Rp", fixInterests: [4.50], floatingInterests: [13.5], minTenor: 7, maxTenor: 20, fixDuration: 3),
        
        BankProgram(name: "KKP (khusus Pengajuan Nasabah Perusahaan Pilihan)", bank: banks[5], description: "Biaya akad mulai dari Rp", fixInterests: [5.00], floatingInterests: [13.5], minTenor: 1, maxTenor: 20, fixDuration: 20),
        
    ]
}
