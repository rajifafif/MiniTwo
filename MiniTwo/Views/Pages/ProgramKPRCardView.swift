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
                Image("cimb")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70)
                    .cornerRadius(8)
                    .padding(.trailing, 10)
                
                Text("Niaga - Fixed 3 tahun")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
            }
            
            Divider()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Rasio Kredit")
                    Text("Good")
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
    }
}

struct ProgramKPRCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRCardView()
            .padding()
    }
}
