//
//  Plan.swift
//  MiniTwo
//
//  Created by Rajif Afif on 21/06/23.
//

import Foundation

class Plan: Identifiable, Equatable {
    let id: String = UUID().uuidString
    var name: String
    var propertyPrice: Decimal
    var downPaymentAmount: Decimal?
    var tenor: Int
    
    var fixInterests: [Float]
    var floatingInterests: [Float]
    
    var pokok: Decimal = 0
    
    init(
        name: String,
        propertyPrice: Decimal,
        downPaymentAmount: Decimal? = 0,
        tenor: Int,
        
        fixInterests: [Float] = [],
        floatingInterests: [Float] = []
    ) {
        self.name = name
        self.propertyPrice = propertyPrice
        self.downPaymentAmount = downPaymentAmount
        self.tenor = tenor
        
        self.fixInterests = fixInterests
        self.floatingInterests = floatingInterests
        
        self.pokok = self.propertyPrice - (self.downPaymentAmount ?? 0)
    }
    
    init(planEntity: PlanEntity) {
        self.name = planEntity.name ?? ""
        self.downPaymentAmount = planEntity.dp as Decimal?
        self.tenor = Int(planEntity.tenor)
        self.propertyPrice = planEntity.propertyPrice! as Decimal
        
        self.fixInterests = []
        self.floatingInterests = []
        
        self.pokok = self.propertyPrice - (self.downPaymentAmount ?? 0)
    }

    static func == (lhs: Plan, rhs: Plan) -> Bool {
        return lhs.id == rhs.id
        && lhs.propertyPrice == rhs.propertyPrice
        && lhs.downPaymentAmount == rhs.downPaymentAmount
        && lhs.tenor == rhs.tenor
        && lhs.fixInterests == rhs.fixInterests
        && lhs.floatingInterests == rhs.floatingInterests
    }
}
