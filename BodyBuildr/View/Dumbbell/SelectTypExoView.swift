//
//  SelecteTypExoView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 13/10/2023.
//

import SwiftData
import SwiftUI

struct SelectTypExoView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var exercices: FetchedResults<Exercice>
    
    @State var isPresented = false
    @State var searchText = ""
    @State var type = ["Abdominaux", "Bras", "Dos", "Jambes", "Epaules", "Torse", "Cardio", "Etirements"]
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    RowExerciceView( typeExo: $type[0])
                } label : {
                    HStack {
                        Image(systemName: "figure.core.training")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Abdominaux")
                    }
                    .padding(.vertical)
                }
                
                NavigationLink {
                    RowExerciceView(typeExo: $type[1])
                } label: {
                    HStack {
                        Image(systemName: "figure.play")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Bras")
                    }
                    .padding(.vertical)
                }
                
                NavigationLink {
                    RowExerciceView(typeExo: $type[2])
                }label: {
                    HStack {
                        Image(systemName: "figure.rolling")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Dos")
                    }
                    .padding(.vertical)
                }
                
                NavigationLink {
                    RowExerciceView(typeExo: $type[3])
                } label: {
                    HStack {
                        Image(systemName: "figure.highintensity.intervaltraining")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Jambes")
                    }
                    .padding(.vertical)
                }
                
                NavigationLink {
                    RowExerciceView(typeExo: $type[4])
                } label: {
                    HStack {
                        Image(systemName: "figure.strengthtraining.traditional")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Epaules")
                    }
                    .padding(.vertical)
                }
                
                NavigationLink {
                    RowExerciceView(typeExo: $type[5])
                } label: {
                    HStack {
                        Image(systemName: "figure.boxing")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Torse")
                    }
                    .padding(.vertical)
                }
                
                NavigationLink {
                    RowExerciceView(typeExo: $type[6])
                } label: {
                    HStack {
                        Image(systemName: "figure.flexibility")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Etirements")
                    }
                    .padding(.vertical)
                }
                
                NavigationLink {
                    RowExerciceView(typeExo: $type[7])
                } label: {
                    HStack {
                        Image(systemName: "bolt.heart.fill")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Cardio")
                    }
                    .padding(.vertical)
                }
                
                NavigationLink {
                    AddExercice()
                } label: {
                    HStack {
                        Image(systemName: "plus.square.on.square")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Excercices personalisés")
                    }
                    .padding(.vertical)
                    .onTapGesture {
                        isPresented = true
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("BodyBuildr")
            .toolbar {
                Button("Add Sample") {
                    addSample()
                }
            }
        }
    }
    
    func addSample() {
        let names = ["Officia", "Magna", "Magna officia", "Lorem velit", "Minim", "Laborum", "Ea sint", "Fugiat", "Consequat", "Duis", "Aliquip"]
        
        let chosenName = names.randomElement()!
        let chosenType = type.randomElement()!
        let chosenDetails = "Excepteur labore sit sed minim consectetur nulla nisi consequat labore in culpa culpa."
        
        let exercice = Exercice(context: moc)
        exercice.id = UUID()
        exercice.name = "\(chosenName)"
        exercice.type = "\(chosenType)"
        exercice.details = chosenDetails
        exercice.editable = false
        
        try? moc.save()
        
    }
}

#Preview {
    ContentView()
}
