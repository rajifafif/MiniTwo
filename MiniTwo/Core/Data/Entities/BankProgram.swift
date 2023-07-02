//
//  BankProgram.swift
//  MiniTwo
//
//  Created by Rajif Afif on 22/06/23.
//

import Foundation

class BankProgram: Hashable, Identifiable, Equatable {
    let id: String = UUID().uuidString
    
    var name: String
    var bank: Bank
    var description: String?
    
    var fixInterests: [Float]
    var floatingInterests: [Float]
    
    var minTenor: Int?
    var maxTenor: Int?
    
    var fixDuration: Int
    
    init(
        name: String,
        bank: Bank,
        description: String?,
        
        fixInterests: [Float] = [],
        floatingInterests: [Float] = [],
        
        minTenor: Int?,
        maxTenor: Int?,
        
        fixDuration: Int
    ) {
        self.name = name
        self.bank = bank
        self.description = description
        
        self.fixInterests = fixInterests
        self.floatingInterests = floatingInterests
        self.minTenor = minTenor
        self.maxTenor = maxTenor
        self.fixDuration = fixDuration
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(description)
        hasher.combine(fixInterests)
        hasher.combine(floatingInterests)
        hasher.combine(minTenor)
        hasher.combine(maxTenor)
        hasher.combine(fixDuration)
    }

    static func == (lhs: BankProgram, rhs: BankProgram) -> Bool {
        return lhs.id == rhs.id
        && lhs.name == rhs.name
        && lhs.bank == rhs.bank
        && lhs.description == rhs.description
        && lhs.fixInterests == rhs.fixInterests
        && lhs.floatingInterests == rhs.floatingInterests
        && lhs.minTenor == rhs.minTenor
        && lhs.maxTenor == rhs.maxTenor
        && lhs.fixDuration == rhs.fixDuration
    }
}
