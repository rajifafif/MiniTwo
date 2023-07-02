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
        GeometryReader { geometry in
            MainTemplate(currentPage: .constant("add")) {
                VStack(spacing: 10) {
                    Image("home3d 3 1")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.8)
                    
                    Text("Program KPR masih kosong")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("Tekan tombol plus untuk mendapatkan program KPR")
                        .font(.body)
                        .multilineTextAlignment(.center)
                }
            }
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeInOut(duration: 1.2)) {
                    opacity = 1
                }
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
