//
//  MockData.swift
//  MiniTwo
//
//  Created by Rajif Afif on 21/06/23.
//

import Foundation

struct Mock {
    
    static var idealPlan = Plan(propertyPrice: 1_000_000_000.00, downPaymentAmount: 30_000_000, tenor: 20, fixInterests: [3.75, 3.75, 3.75], floatingInterests: [11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11])
    static var shortPlan = Plan(propertyPrice: 1_000_000_000.00, downPaymentAmount: 30_000_000, tenor: 10, fixInterests: [7.40, 7.40, 7.40, 7.40, 7.40, 7.40, 7.40, 7.40, 7.40, 7.40], floatingInterests: [11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11])
    
}
