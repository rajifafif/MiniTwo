//
//  CoreDataViewModel.swift
//  MiniTwo
//
//  Created by Muhammad Fauzul Akbar on 26/06/23.
//

import Foundation
import CoreData
import CoreML

class PlanDataViewModel: ObservableObject {
    
    let paramPrediction = [
        [7.00, 210.97, 16790.43, 6324.66, 167683.01, 171275.74],
        [5.50, 213.98, 15890.14, 5260.03, 163191.80, 141568.80],
        [4.00, 217.13, 17795.75, 6195.75, 231609.47, 196189.99],
        [3.50, 218.36, 19588.40, 7006.80, 291979.10, 237447.04],
        [4.25, 219.59, 20866.96, 7200.00, 335154.90, 272595.99],
        [4.00, 222.05, 22617.69, 7400.00, 378330.70, 307744.94],
        [3.75, 224.51, 24462.73, 7600.00, 407114.57, 331177.57],
        [3.50, 226.97, 26395.33, 7700.00, 435898.43, 354610.21],
        [3.10, 229.43, 28606.39, 7800.00, 457486.33, 382184.68],
        [3.72, 231.89, 30858.60, 7700.00, 479074.23, 419759.16]
    ]
    
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
        newPlan.propertyPrice = plan.propertyPrice
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
    
    func predictBIRate(_ year: Int) -> Double {
        do {
            let config = MLModelConfiguration()
            let model = try BIRateModelLinReg(configuration: config)
//            let output = try model.prediction(input: BIRateModelInput(lps: 7.00, ihpr_bi: 210.97, pdb: 16790.43, ihsg: 6324.66, ekspor: 167683.01, impor: 171275.74))
            let param = paramPrediction[year - 2024]
            let output = try model.prediction(lps: param[0], ihpr_bi: param[1], pdb: param[2], ihsg: param[3], ekspor: param[4], impor: param[5])
            return output.bi_rate + 1.5
        } catch {
            print("Error in predicting. \(error)")
        }
        
        return 0.0
    }
}
