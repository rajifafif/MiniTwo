//
//  TabView.swift
//  SwifftChartNew
//
//  Created by Ardi Rakhmat  on 30/06/23.
//

import SwiftUI

struct ToyShape: Identifiable {
    var color: String
    var type: String
    var count: Double
    var id = UUID()
}

var stackedBarData: [ToyShape] = [
   
    
    .init(color: "Rp7.000.000 per bulan", type: "CIMB", count: 7000000),
    
   
        .init(color: "Rp6.800.000 per bulan", type: "Maybank", count: 6800000),
   
    
        .init(color: "Rp7.800.000 per bulan", type: "Permata Bank", count: 7800000),

]

struct PerbandinganKPRView: View {
    
    @State private var currentTab = 0

    var body: some View {
        NavigationStack {
            ZStack{
                Rectangle()
                    .fill(Color(.systemBlue))
                    .ignoresSafeArea()
                    .opacity(0.1)
                
                
                VStack{
                    //Start Perbandingan KPR//
                    HStack {
                        Image(systemName: "doc.on.doc.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.blue)                    .fontWeight(.semibold)
                            .frame(width: 40)
                            .padding(10)
                            .background(.blue.opacity(0.15))
                            .cornerRadius(10)
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Bandingkan KPR")
                                .font(.body.bold())
                            Text("Temukuan pilihan program terbaik yang sesuai untuk anda.")
                                .font(.caption)
                        
                        }
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    //.padding()
                    //Stop Perbandingan KPR + Bandingan KPR//
                    
                    TabView(selection: $currentTab,
                            content:  {
                        TrialTab()
                          .padding()
                          //  .padding()
                          //   .padding()
                            .tag(0)
                        TrialTab()
                          .padding()

                            .tag(1)
                        TrialTab()
                          .padding()

                            .tag(2)
                    }
                    )
                    
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    .padding(.top)
                    
                    
                }
            }//ZStack
            .navigationTitle("Perbandingan KPR")
        }//Navigation Stack
        
        
    }
}

struct PerbandinganKPRView_Previews: PreviewProvider {
    static var previews: some View {
        PerbandinganKPRView()
    }
}
