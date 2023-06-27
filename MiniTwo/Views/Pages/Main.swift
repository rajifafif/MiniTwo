//
//  Main.swift
//  MiniTwo
//
//  Created by Rajif Afif on 27/06/23.
//

import SwiftUI

struct Main: View {
    var body: some View {
        MainTemplate(currentPage: .constant("add")){
            Text("Main Page")
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
