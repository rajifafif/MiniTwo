//
//  Main.swift
//  MiniTwo
//
//  Created by Rajif Afif on 27/06/23.
//

import SwiftUI

struct Main: View {
    @State private var opacity: Double = 0
    
    var body: some View {
        MainTemplate(currentPage: .constant("add")){
            Text("Main Page")
        }
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeInOut(duration: 1.2)) {
                opacity = 1
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
