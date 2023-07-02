//
//  CompareViewModel.swift
//  MiniTwo
//
//  Created by Rajif Afif on 03/07/23.
//

import Foundation

class CompareViewModel: ObservableObject {
    
    @Published var programCompared: [Plan] = []
    
    func addProgram(plan: Plan) {
        if (programCompared.count < 3 ) {
            programCompared.append(plan)
        }
    }
    
    func removePlan(plan: Plan) {
        programCompared.removeAll { $0.id == plan.id }
    }
    
    func removeAll() {
        programCompared = []
    }
    
}
