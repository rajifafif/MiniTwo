//
//  ProgramKPRCardView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 25/06/23.
//

import SwiftUI

struct ProgramKPRCardView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("\(3)")
                    .font(.title3.bold())
                    .foregroundColor(.white)
                    .frame(width: 42, height: 42)
                    .background(.blue)
                    .cornerRadius(5)
                
                VStack(alignment: .leading) {
                    Text("Fixed 3 tahun")
                        .font(.title3.bold())
                }
                
                Spacer()
                
                Image(systemName: "arrow.forward.square")
                    .font(.title)
                    
            }
            
            Divider()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Max Floating")
                    Text("Rp\(12000000)")
                        .foregroundColor(.green)
                        .bold()
                }
                
                Spacer()
                
                VStack {
                    Text("Fix Rate")
                    Text(String(3.75) + "%")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Min Tenor")
                    Text("\(12) tahun")
                }
            }
            .font(.body)
        }
        .padding()
        .border(Color(UIColor.systemGray4))
        .padding(.bottom)
    }
}

struct ProgramKPRCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRCardView()
            .padding()
    }
}
