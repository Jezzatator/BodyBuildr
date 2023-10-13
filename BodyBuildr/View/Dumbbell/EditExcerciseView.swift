//
//  AddNewExcerciseView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 13/10/2023.
//

import SwiftData
import SwiftUI

struct EditExcerciseView: View {
    @Bindable var exercice: Exercice
    
    let types = ["Abdominaux", "Bras", "Dos", "Jambes", "Epaules", "Torse", "Cardio", "Etirements"]
    
    var body: some View {
        Form {
            TextField("Nom", text: $exercice.name)
            TextField("Details", text: $exercice.details, axis: .vertical)
            
            Section("Type d'exercice") {
                Picker("Type", selection: $exercice.type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
               }
            }
            .navigationTitle("Modifier un exercice")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Exercice.self, configurations: config)
        let example = Exercice(name: "Dip", type: "Bras", details: "Muscle primaire : Triceps Brachial, Muscles additionnels: Pectoralis, Deltoids")
        return EditExcerciseView(exercice: example)
            .modelContainer(container)
    } catch {
        fatalError("Failes to create model container.")
    }
}
