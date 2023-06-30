//
//  TextFieldStyle.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 29/06/23.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.all, 12)
            .foregroundColor(.black)
            .frame(width: UIScreen.main.bounds.width - 35)
            .background(Color(UIColor(red: 244/255, green: 242/255, blue: 247/255, alpha: 1)))
            .cornerRadius(5)
    }
}

extension View {
    func textFieldStyle() -> some View {
        modifier(TextFieldModifier())
    }
}
