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
    
//    @State var exercice: Exercice = Exercice(name: "Hola", type: "Bras", details: "GROSBRAS")
    
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
        }
    }

#Preview {
    ContentView()
}
