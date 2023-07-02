//
//  TrialTab.swift
//  SwifftChartNew
//
//  Created by Ardi Rakhmat  on 02/07/23.
//

import SwiftUI
import Charts


struct TrialTab: View {
    var body: some View {
        ScrollView{
            Chart {
                ForEach(stackedBarData) { shape in
                    BarMark(
                        x: .value("Shape Type", shape.type),
                        y: .value("Total Count", shape.count)
                    )
                    .foregroundStyle(by: .value("Shape Color", shape.color))
                }
            }
            .frame(height: 250)
            .background(.white)
            .chartForegroundStyleScale([
                "Rp7.000.000 per bulan": Color(#colorLiteral(red: 0.8431372549, green: 0.8862745098, blue: 1, alpha: 1)), "Rp6.800.000 per bulan": Color(#colorLiteral(red: 1, green: 0.8431372549, blue: 0.8431372549, alpha: 1)), "Rp7.800.000 per bulan": Color(#colorLiteral(red: 0.8941176471, green: 1, blue: 0.8431372549, alpha: 1))
            ])
            .padding(.top)
            .padding()
            .chartLegend(.hidden)
            .chartYAxis(.hidden)
            //.padding(.top)
            
            

            VStack(alignment: .leading, spacing: 10) {
                HStack{
                    Image("Frame 60")
                    Spacer()
                    Image ("Frame 61")
                    Spacer()
                    Image ("Frame 62")
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top)
                    
                VStack(alignment: .leading) {
                    Text("Angsuran Fix")
                        .padding(.leading, 20)
                        .padding(.top, 5)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8431372549, green: 0.8862745098, blue: 1, alpha: 1)))
                        
                            
                            .frame(height: 25)
                        
                            .overlay(
                                Text("7.000.000")
                            )

                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 1, green: 0.8431372549, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("6.800.000")
                            )
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8941176471, green: 1, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("7.800.000")
                            )
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                }
                
                VStack(alignment: .leading) {
                    Text("Angsuran Fix")
                        .padding(.leading, 20)
                        .padding(.top, 5)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8431372549, green: 0.8862745098, blue: 1, alpha: 1)))
                        
                            
                            .frame(height: 25)
                        
                            .overlay(
                                Text("7.000.000")
                            )

                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 1, green: 0.8431372549, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("6.800.000")
                            )
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8941176471, green: 1, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("7.800.000")
                            )
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                }
                
                VStack(alignment: .leading) {
                    Text("Angsuran Fix")
                        .padding(.leading, 20)
                        .padding(.top, 5)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8431372549, green: 0.8862745098, blue: 1, alpha: 1)))
                        
                            
                            .frame(height: 25)
                        
                            .overlay(
                                Text("7.000.000")
                            )

                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 1, green: 0.8431372549, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("6.800.000")
                            )
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8941176471, green: 1, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("7.800.000")
                            )
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                }
                
                VStack(alignment: .leading) {
                    Text("Angsuran Fix")
                        .padding(.leading, 20)
                        .padding(.top, 5)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8431372549, green: 0.8862745098, blue: 1, alpha: 1)))
                        
                            
                            .frame(height: 25)
                        
                            .overlay(
                                Text("7.000.000")
                            )

                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 1, green: 0.8431372549, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("6.800.000")
                            )
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8941176471, green: 1, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("7.800.000")
                            )
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                }
                
                VStack(alignment: .leading) {
                    Text("Angsuran Fix")
                        .padding(.leading, 20)
                        .padding(.top, 5)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8431372549, green: 0.8862745098, blue: 1, alpha: 1)))
                        
                           
                            .frame(height: 25)
                        
                            .overlay(
                                Text("7.000.000")
                            )

                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 1, green: 0.8431372549, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("6.800.000")
                            )
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(#colorLiteral(red: 0.8941176471, green: 1, blue: 0.8431372549, alpha: 1)))
                            
                            .frame(height: 25)
                            .overlay(
                                Text("7.800.000")
                            )
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                }
            
                HStack{
                    Button(action: {
                        print("tes")
                    })
                    {
                        Text("Detail")
                            .foregroundColor(.blue)
                            .padding(.trailing, 20)
                            .padding(.leading, 20)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2)
                            
                    )}
                    
                    Spacer()
                    Button(action: {
                        print("tes")
                    })
                    {
                        Text("Detail")
                            .foregroundColor(.blue)
                            .padding(.trailing, 20)
                            .padding(.leading, 20)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2)
                            
                    )}
                     
                    Spacer()
                    Button(action: {
                        print("tes")
                    })
                    {
                        Text("Detail")
                            .foregroundColor(.blue)
                            .padding(.trailing, 20)
                            .padding(.leading, 20)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2)
                            
                    )}


                }
                .padding()
                .padding(.leading,7)
                .padding(.trailing,7)
                
            }
            
            
            .background(.white)
            
            
        }
        
        .padding(.bottom)
        .padding(.bottom)
        .background(.white)
        
           
    }
}

struct TrialTab_Previews: PreviewProvider {
    static var previews: some View {
        TrialTab()
    }
}
