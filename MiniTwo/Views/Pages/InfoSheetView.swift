//
//  InfoSheetView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 28/06/23.
//

import SwiftUI

struct InfoSheetView: View {
    
    @Environment(\.dismiss) var dismissed
    
    var body: some View {
        Button(action: {
            dismissed()
        }, label: {
            Text("Dismiss")
        })
    }
}

struct InfoSheetView_Previews: PreviewProvider {
    static var previews: some View {
        InfoSheetView()
    }
}
