//
//  ContentView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 12/10/2023.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var exercices: FetchedResults<Exercice>

    
    @State var type = ["Abdominaux", "Bras", "Dos", "Jambes", "Epaules", "Torse", "Cardio", "Etirements"]

    
    var body: some View {
            TabView {
                
                SelectTypExoView()
                    .tabItem {
                        Label("", systemImage: "dumbbell")
                    }
            
                //SeanceView(exercice: Bindable<exercice>)
                Text("Test")
                    .tabItem {
                        Label("", systemImage: "doc.text.below.ecg")
                    }
            
            
                Text("TabView3")
                    .tabItem {
                        Label("", systemImage: "house")
                    }
            
            
                Text("TabView4")
                    .tabItem {
                        Label("", systemImage: "calendar")
                    }
           
                Text("TabView5")
                    .tabItem {
                        Label("", systemImage: "ellipsis")
                    }
                .navigationTitle("BodyBuildr")
                }
            .onAppear {
                isEmptyEx()
            }
        }
    
    func isEmptyEx() {
        if exercices.isEmpty {
            addSample()
            print("is Empty, Samples was added")
        } else {
            print("Not Empty, no Samples added")
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
