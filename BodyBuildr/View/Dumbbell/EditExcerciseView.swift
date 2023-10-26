//
//  AddNewExcerciseView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 13/10/2023.
//

import SwiftUI

struct EditExcerciseView: View {
    @Environment(\.managedObjectContext) var moc
    @EnvironmentObject var exercice: Exercice


    @State private var exerciceName = ""
    @State private var exerciceDetails = ""
    @State private var exerciceType = "Abdominaux"

    
    let types = ["Abdominaux", "Bras", "Dos", "Jambes", "Epaules", "Torse", "Cardio", "Etirements"]
    
    var body: some View {
        Form {
            TextField("Nom", text: $exerciceName)
            TextField("Détails", text: $exerciceDetails, axis: .vertical)
            
            Section("Type d'exercice") {
                Picker("Type", selection: $exerciceType) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("Modifier un exercice")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            exerciceType = exercice.type ?? "Abdominaux"
            exerciceName = exercice.name ?? "Unknown"
            exerciceDetails = exercice.details ?? "Unknown"
        }
    }
}

//#Preview {
//    EditExcerciseView()
//}

extension Binding {
     func toUnwrapped<T>(defaultValue: T) -> Binding<T> where Value == Optional<T>  {
        Binding<T>(get: { self.wrappedValue ?? defaultValue }, set: { self.wrappedValue = $0 })
    }
}
