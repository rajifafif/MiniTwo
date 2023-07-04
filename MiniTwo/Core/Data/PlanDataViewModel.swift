//
//  CoreDataViewModel.swift
//  MiniTwo
//
//  Created by Muhammad Fauzul Akbar on 26/06/23.
//

import Foundation
import CoreData

class PlanDataViewModel: ObservableObject {
    
    let coreDataManager = CoreDataManager.instance
    @Published var savedPlanEntities: [PlanEntity] = []
    
    init() {
        fetchPlans()
    }
    
    func fetchPlans() {
        let request = NSFetchRequest<PlanEntity>(entityName: "PlanEntity")
        
        do {
            savedPlanEntities = try coreDataManager.context.fetch(request)
        } catch let error {
            print("Error fetching. \(error.localizedDescription)")
        }
    }
    
    func addPlan(plan: Plan) {
        let newPlan = PlanEntity(context: coreDataManager.context)
        newPlan.name = plan.name
        newPlan.propertyPrice = (plan.propertyPrice) as? NSDecimalNumber
        newPlan.tenor = Int32(plan.tenor)
        
        saveData()
    }
    
    func deletePlan(indexSet: IndexSet) {
        guard let index = indexSet.first else { return }
        let planEntity = savedPlanEntities[index]
        coreDataManager.context.delete(planEntity)
        saveData()
    }
    
    func saveData() {
        coreDataManager.saveData()
        fetchPlans()
    }
}
