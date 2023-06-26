//
//  ContentView.swift
//  MiniTwo
//
//  Created by Rajif Afif on 16/06/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @StateObject var planDataViewModel = PlanDataViewModel()
    @State var temp: Int = 1
    
    var body: some View {
        NavigationView {
            List {
                ForEach(planDataViewModel.savedPlanEntities) { plan in
                    NavigationLink {
                        VStack {
                            Text(plan.name!)
                            Text("\(plan.propertyPrice)")
                        }
                    } label: {
                        Text(plan.name!)
                    }

                }
                .onDelete(perform: planDataViewModel.deletePlan)
            }
            .toolbar {
#if os(iOS)
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
#endif
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            Text("Select a plan")
        }
    }
    
    private func addItem() {
        withAnimation {
            let newPlan = Plan(name: "test\(temp)", propertyPrice: Int32(200*temp), tenor: 120)
            do {
                try planDataViewModel.addPlan(plan: newPlan)
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
        self.temp += 1
    }
    
    //    private func deleteItems(offsets: IndexSet) {
    //        withAnimation {
    //            offsets.map { items[$0] }.forEach(planDataViewModel.deletePlan(indexSet: <#T##IndexSet#>))
    //
    //            do {
    //                try viewContext.save()
    //            } catch {
    //                // Replace this implementation with code to handle the error appropriately.
    //                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
    //                let nsError = error as NSError
    //                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
    //            }
    //        }
    //    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
