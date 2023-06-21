//
//  Plan.swift
//  MiniTwo
//
//  Created by Rajif Afif on 21/06/23.
//

import Foundation

class Plan: Identifiable, Equatable {
    let id: String = UUID().uuidString
    var propertyPrice: Float
    var downPaymentAmount: Float?
    var tenor: Int
    var fixInterests: [Float]
    var floatingInterests: [Float]
    
    init(
        propertyPrice: Float,
        downPaymentAmount: Float?,
        tenor: Int,
        fixInterests: [Float] = [],
        floatingInterests: [Float] = []
    ) {
        self.propertyPrice = propertyPrice
        self.downPaymentAmount = downPaymentAmount
        self.tenor = tenor
        self.fixInterests = fixInterests
        self.floatingInterests = floatingInterests
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
