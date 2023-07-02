//
//  MainTemplate.swift
//  MiniTwo
//
//  Created by Rajif Afif on 27/06/23.
//

import SwiftUI

struct MainTemplate<Content: View>: View {
    let content: () -> Content
    
    @Binding var currentPage: String?
    
    init(currentPage: Binding<String?> = .constant(nil), @ViewBuilder content: @escaping () -> Content) {
            _currentPage = currentPage
            self.content = content
        }
    
    var body: some View {
        NavigationView{
            ZStack{
                // Content
                content()
                
                // Nav
                VStack{
                    Spacer()
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color("gray-100"))
                            .frame(height: 50)
                        
                        HStack{
                            Spacer()
                            
                            VStack{
                                
                                ZStack{
                                    if currentPage == "home" {
                                        Circle()
                                            .fill(Color.blue)
                                            .frame(width: 75)
                                        Image(systemName: "house.fill")
                                            .font(.system(size: 27))
                                            .foregroundColor(.white)
                                    } else {
                                        Image(systemName: "house.fill")
                                            .font(.system(size: 27))
                                    }
                                }
                                .frame(width: 75, height: 75)
                            }
                            
                            Spacer()
                            
                            VStack{
                                NavigationLink(destination: SimulationFormView()) {
                                    ZStack{
                                        if currentPage == "add" {
                                            Circle()
                                                .fill(Color.blue)
                                                .frame(width: 75)
                                            Image(systemName: "plus")
                                                .font(.system(size: 27))
                                                .foregroundColor(.white)
                                        } else {
                                            Image(systemName: "plus")
                                                .font(.system(size: 27))
                                        }
                                    }
                                    .frame(width: 75, height: 75)
                                }
                            }
                            
                            Spacer()
                            
                            VStack{
                                ZStack{
                                    if currentPage == "calculator" {
                                        Circle()
                                            .fill(Color.blue)
                                            .frame(width: 75)
                                        Image(systemName: "filemenu.and.selection")
                                            .font(.system(size: 27))
                                            .foregroundColor(.white)
                                    } else {
                                        Image(systemName: "filemenu.and.selection")
                                            .font(.system(size: 27))
                                    }
                                }
                                .frame(width: 75, height: 75)
                            }
                            
                            Spacer()
                        }
                    }
                }
                .padding(.bottom, 30)
                .padding(.leading, 50)
                .padding(.trailing, 50)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MainTemplate_Previews: PreviewProvider {
    static var previews: some View {
        MainTemplate(currentPage: .constant("add")){
            Text("Henlo")
        }
    }
}
