//
//  ProgramKPRView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 25/06/23.
//

import SwiftUI

struct ProgramKPRView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .fill(.blue.opacity(0.1))
                    .ignoresSafeArea()
                    .frame(height: 130)

                HStack {
                    Image(systemName: "dollarsign.circle")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.blue)
                        .fontWeight(.semibold)
                        .frame(width: 40)
                        .padding(10)
                        .background(.blue.opacity(0.15))
                        .cornerRadius(10)
                    VStack(alignment: .leading, spacing: 6) {
                        Text("KPR Bank")
                            .font(.body.bold())
                        Text("Beberapa pilihan pembayaran berikut adalah program dari Bank penyedia KPR.")
                            .font(.caption)
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .padding(10)
                .listRowSeparator(.hidden)
            }
            
            List {
                ForEach(0...10, id: \.self) { _ in
                    ProgramKPRCardView()
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Program KPR")
            .listStyle(.plain)
        }
    }
}

struct ProgramKPRView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRView()
    }
}
