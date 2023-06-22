//
//  Bank.swift
//  MiniTwo
//
//  Created by Rajif Afif on 22/06/23.
//

import Foundation

class Bank: Identifiable, Equatable {
    let id: String = UUID().uuidString
    
    var name: String
    var logo: String
    
    init(
        name: String,
        logo: String
    ) {
        self.name = name
        self.logo = logo
    }

    static func == (lhs: Bank, rhs: Bank) -> Bool {
        return lhs.id == rhs.id
        && lhs.name == rhs.name
        && lhs.logo == rhs.logo
    }
}
