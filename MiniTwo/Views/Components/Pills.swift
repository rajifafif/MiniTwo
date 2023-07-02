//
//  Pills.swift
//  MiniTwo
//
//  Created by Rajif Afif on 03/07/23.
//

import SwiftUI

struct Pills: View {
    var text: String
    var color: Color
    
    var body: some View {
        HStack {
            Text(text)
                .font(.body)
                .foregroundColor(.black)
        }
        .padding(8)
        .background(Color(getBackgroundColor(color: color)))
        .cornerRadius(3)
        .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(getBackgroundColor(color: color)), lineWidth: 1)
        )
    }
    
    func getBackgroundColor(color: Color) -> String {
        switch color {
        case .blue:
            return "blue-100"
        case .red:
            return "red-100"
        case .green:
            return "green-100"
        default:
            return "blue-100"
        }
    }
}

struct Pills_Previews: PreviewProvider {
    static var previews: some View {
        Pills(text: "10000000", color: .red)
    }
}
