//
//  SeanceView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 19/10/2023.
//

import SwiftData
import SwiftUI

//struct SeanceView: View {
//    @Environment(\.modelContext) var modelContext
//    //@Query var exercices: [Exercice]
//    //@Query var seances: [Seance]
//    
//    @Bindable var exercice: Exercice
//    
//    @State var weigth = ""
//    @State var weithType = "kg"
//    @State var weithTypes = ["kg", "lb"]
//    @State var repetitions = ""
//    @State var details = ""
//    
//
//    
//    var body: some View {
//        NavigationStack {
//            Form {
//                Group {
//                    Section("Poids") {
//                        HStack {
//                            TextField("Poids", text: $weigth)
//                                .keyboardType(.numberPad)
//                                .frame(maxWidth: .infinity)
//                            
//                            Picker("", selection: $weithType) {
//                                ForEach(weithTypes, id: \.self) {
//                                    Text($0)
//                                }
//                            }
//                            .pickerStyle(SegmentedPickerStyle())
//                        }
//                    }
//                    
//                    Section("Répétitions") {
//                        TextField("Répétition", text: $repetitions)
//                            .keyboardType(.numberPad)
//                    }
//                    
//                    Section("Remarques") {
//                        TextField("Détails", text: $details)
//                    }
//                    
//                    Button {
//                        print("valider")
//                    } label: {
//                        Text("Valider")
//                    }
//                    .frame(maxWidth: .infinity)
//                }
//                .padding(.vertical, -10)
//                
//                
//                Section {
//                    List {
//                        HStack {
//                            Text("Série 1: 15kg - 12 répétitions")
//                            Spacer()
//                            Image(systemName: "x.circle.fill")
//                                .foregroundStyle(.secondary)
//                        }
//                        
//                        HStack {
//                            Text("Série 2: 15kg - 12 répétitions")
//                            Spacer()
//                            Image(systemName: "x.circle.fill")
//                                .foregroundStyle(.secondary)
//                        }
//                        Text("Série 3: 15kg - 12 répétitions")
//                        Text("Série 4: 15kg - 12 répétitions")
//                        Text("Série 5: 15kg - 12 répétitions")
//                    }
//                }
//            }
//            .navigationTitle(exercice.name)
//            .navigationBarTitleDisplayMode(.inline)
//        }
//        .ignoresSafeArea(.keyboard)
//        .scrollDismissesKeyboard(.interactively)
//        .toolbar {
//            ToolbarItemGroup(placement: .keyboard) {
//                HStack {
//                    Spacer()
//                    Button {
//                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//                    } label: { Text("Done") }
//                }.padding()
//            }
//        }
//    }
//}

//#Preview {
//    SeanceView()
//}
