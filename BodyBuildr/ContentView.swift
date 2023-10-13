//
//  ContentView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 12/10/2023.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var excercices: [Exercice]
    
    @State var type = ["Abdominaux", "Bras", "Dos", "Jambes", "Epaules", "Torse", "Cardio", "Etirements"]
    
    var body: some View {
            TabView {
                
                SelectTypExoView(modelContext: _modelContext, _excercices: _excercices)
                    .tabItem {
                        Label("", systemImage: "dumbbell")
                    }
            
                Text("TabView2")
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
            }
                .navigationTitle("BodyBuildr")
        }
    }

#Preview {
    ContentView()
}
