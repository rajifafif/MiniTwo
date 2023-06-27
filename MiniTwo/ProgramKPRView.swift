//
//  ProgramKPRView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 25/06/23.
//

import SwiftUI

struct ProgramKPRView: View {
    var body: some View {
        ScrollView() {
            Text("Program KPR")
                .font(.title2)
                .fontWeight(.heavy)
            ForEach(0...10, id: \.self) { _ in
                ProgramKPRCardView()
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ProgramKPRView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRView()
    }
}
