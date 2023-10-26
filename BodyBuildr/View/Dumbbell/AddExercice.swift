//
//  SwiftUIView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 13/10/2023.
//

import SwiftData
import SwiftUI

struct AddExercice: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var exerciceName = ""
    @State private var exerciceDetails = ""
    @State private var exerciceType = "Abdominaux"
    
    
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
    
    func addExercice() {
        let newExercice = Exercice(context: moc)
        newExercice.id = UUID()
        newExercice.name = exerciceName
        newExercice.type = exerciceType
        newExercice.details = exerciceDetails
        newExercice.editable = true
        
        if moc.hasChanges {
            do {
                try moc.save()
            } catch {
                fatalError("An error occured while saving into the container Core Data : \(error.localizedDescription)")
            }
        }
        dismiss()
    }
}

#Preview {
    AddExercice()
}
