//
//  ProgramKPRDetailView.swift
//  MiniTwo
//
//  Created by Yuga Samuel on 25/06/23.
//

import SwiftUI

enum SheetState {
    case fixed, floating
}

struct ProgramKPRDetailView: View {
    
    @ObservedObject var sheetManager = SheetManager.shared
    @State private var selectedState = SheetState.fixed
    @State var bankSimulation: BankSimulation
    
    @State var angsuranFixed = 0.0
    @State var angsuranFloating = 0.0
    
    @State var currentPlan: Plan?
    
    func fillCalculationData() {
        let pokok = bankSimulation.simulation.hargaProperti
        
        angsuranFixed = calculateMonthlyPayment(
            pokok: pokok,
            interestRate: Double(bankSimulation.bankProgram.fixInterests[0]),
            tenorYear: Int(bankSimulation.simulation.masaTenor))
        
        angsuranFloating = calculateMonthlyPayment(
            pokok: pokok,
            interestRate: Double(bankSimulation.bankProgram.floatingInterests[0]),
            tenorYear: Int(bankSimulation.simulation.masaTenor))
        
        // TODO Loop Here
//        var cicilans = [angsuranFixed, angsuranFloating]
        
        currentPlan = Plan(
            name: "",
            propertyPrice: (bankSimulation.simulation.hargaProperti),
            downPaymentAmount: (bankSimulation.simulation.nominalDP),
            tenor: Int(bankSimulation.simulation.masaTenor),
            bankProgram: nil
        )
        
        let currentProgram = bankSimulation.bankProgram
        
        print("Calculating Again", currentPlan!.tenor)
        print(programPaymentList(plan: currentPlan!, program: currentProgram))
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                ZStack {
                    Rectangle()
                        .fill(.blue.opacity(0.1))
                        .ignoresSafeArea()
                }
                
                HStack {
                    Spacer()
                    Text("Hasil simulasi KPR hanya estimasi sebagai acuan. Hubungi Bank pilihan Anda untuk konsultasi pembiayaan.")
                        .font(.body)
                        .foregroundColor(Color(red: 178/255, green: 78/255, blue: 78/255))
                    Spacer()
                }
                .padding(.vertical, 10)
                .background(.yellow.opacity(0.1))
                .cornerRadius(8)
                .padding(.horizontal)
                
                VStack {
                    HStack {
                        Text("Angsuran Periode Fixed")
                            .fontWeight(.bold)
                        
                        Button(action: {
                            selectedState = SheetState.fixed
                            sheetManager.infoIsPresented.toggle()
                        }, label: {
                            Image(systemName: "info.circle")
                        })
                        
                        Spacer()
                        Text(String(bankSimulation.bankProgram.fixInterests[0]) + "%")
                            .fontWeight(.bold)
                    }
                    .font(.body)
                    
                    Divider()
                    
                    VStack(spacing: 4) {
                        HStack {
                            Text("Nilai Angsuran")
                            Spacer()
                            Text("Rp \(Int(angsuranFixed)) / bulan")
                                .fontWeight(.bold)
                        }
                        
                        HStack {
                            Text("Periode Tahun")
                            Spacer()
                            Text("1 - \(bankSimulation.bankProgram.fixInterests.count)")
                                .fontWeight(.bold)
                        }
                    }
                    .font(.body)
                }
                .padding()
                .border(Color(UIColor.systemGray4))
                .padding(.horizontal)
                
                VStack {
                    HStack {
                        Text("Angsuran Periode Floating")
                            .fontWeight(.bold)
                        
                        Button(action: {
                            selectedState = SheetState.floating
                            sheetManager.infoIsPresented.toggle()
                        }, label: {
                            Image(systemName: "info.circle")
                        })
                        
                        Spacer()
                        Text(String(bankSimulation.bankProgram.floatingInterests[0]) + "%")
                            .fontWeight(.bold)
                    }
                    .font(.body)
                    
                    Divider()
                    
                    VStack(spacing: 4) {
                        HStack {
                            Text("Nilai Angsuran")
                            Spacer()
                            Text("Rp \(Int(angsuranFloating)) / bulan")
                                .fontWeight(.bold)
                        }
                        
                        HStack {
                            Text("Periode Tahun")
                            Spacer()
                            Text("4 - 15")
                                .fontWeight(.bold)
                        }
                    }
                    .font(.body)
                }
                .padding()
                .border(Color(UIColor.systemGray4))
                .padding(.horizontal)
                
                VStack {
                    HStack {
                        Text("Informasi KPR")
                            .font(.body)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    Divider()
                    
                    VStack(spacing: 4) {
                        HStack {
                            Text("Plafon pinjaman")
                            Spacer()
                            Text("Rp\(Int(bankSimulation.simulation.pokok))")
                        }
                        
                        HStack {
                            Text("Tenor")
                            Spacer()
                            Text("\(Int(bankSimulation.simulation.masaTenor)) tahun")
                        }
                        
                        HStack {
                            Text("Estimasi Biaya Awal")
                            Spacer()
                            Text("Rp\(Int(bankSimulation.simulation.estBiayaAkad))")
                        }
                        
                        HStack {
                            Text("Estimasi Biaya Sertifikat")
                            Spacer()
                            Text("Rp\(Int(bankSimulation.simulation.estBiayaSertifikat))")
                        }
                    }
                    .font(.body)
                }
                .padding()
                .border(Color(UIColor.systemGray4))
                .padding(.horizontal)
                
                Button(action: {
                    // add action here ngab
                    
                }, label: {
                    Text("Simpan")
                        .font(.body.bold())
                        .foregroundColor(.white)
                        .padding(.all, 12)
                        .frame(width: UIScreen.main.bounds.width - 35)
                        .background(.blue)
                        .cornerRadius(8)
                })
            }
            .onAppear{
                fillCalculationData()
            }
            .sheet(isPresented: $sheetManager.infoIsPresented) {
                VStack(alignment: .leading, spacing: 15) {
                    switch selectedState {
                    case .fixed:
                        DescriptionView(title: "Periode Fixed",
                                        deskripsi: "Periode Fixed adalah periode berlakunya suku bunga fixed yang termasuk dalam tenor pengajuan KPR.")
                    case .floating:
                        DescriptionView(title: "Periode Floating",
                                        deskripsi: "Periode Floating adalah periode berlakunya suku bunga tidak tetap yang akan dikenakan oleh bank kepada debitur KPR dari berakhirnya periode  fixed hingga akhir masa kredit.")
                    }
                    
                    Button(action: {
                        sheetManager.infoIsPresented = false
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Mengerti")
                                .font(.body.bold())
                            Spacer()
                        }
                    })
                    .padding(.top, 5)
                }
                .padding()
                .presentationDetents([.height(235)])
            }
            .navigationTitle(bankSimulation.bankProgram.name)
        }
    }
}

struct ProgramKPRDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramKPRDetailView(bankSimulation: BankSimulation(bankProgram: MockData.bankPrograms[0], simulation: Simulation(hargaProperti: 500_000_000, nominalDP: 0, masaTenor: 10, gaji: 0)))
    }
}
