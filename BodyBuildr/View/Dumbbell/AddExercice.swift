//
//  SwiftUIView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 13/10/2023.
//

import SwiftData
import SwiftUI

struct AddExercice: View {
    @Environment(\.modelContext) var modelContext
    
    @State private var exerciceName = ""
    @State private var exerciceDetails = ""
    @State private var exerciceType = ""
    
    
        let types = ["Abdominaux", "Bras", "Dos", "Jambes", "Epaules", "Torse", "Cardio", "Etirements"]
        
        var body: some View {
            Form {
                TextField("Nom", text: $exerciceName)
                TextField("Details", text: $exerciceDetails, axis: .vertical)
                
                Section("Type d'exercice") {
                    Picker("Type", selection: $exerciceType) {
                        ForEach(types, id: \.self) {
                            Text($0)
                        }
                   }
                }
                .navigationTitle("Ajouter un exercice")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem {
                        Button {
                            addExercice()
                        } label: {
                            Text("Enregistrer")
                        }
                    }
                }
            }
        }
    
    func addExercice() {
        let exercice = Exercice(name: exerciceName, type: exerciceType, details: exerciceName)
        modelContext.insert(exercice)
        
    }
}

#Preview {
    AddExercice()
}
