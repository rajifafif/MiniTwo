//
//  TextFieldView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 27/06/23.
//

import SwiftUI

struct TextFieldView: View {

    var title: String
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            TextField(placeholder, text: $text)
                .padding(.all, 12)
                .frame(width: UIScreen.main.bounds.width - 35)
                .background(Color(UIColor.systemGray5))
                .cornerRadius(5)
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(title: "Gaji saat ini",
                      placeholder: "Rp10.000.000",
                      text: .constant(""))
    }
}
