//
//  AddNewExcerciseView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 13/10/2023.
//

import SwiftUI

struct EditExcerciseView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var exercice: Exercice


    @State private var exerciceName = ""
    @State private var exerciceDetails = ""
    @State private var exerciceType = "Abdominaux"
    
    @State private var showAlert = false

    
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
            
            Button{ withAnimation {
                showAlert = true
            }
            } label: {
                Text("Supprimer")
                    .foregroundColor(Color.red)
            }
            
            .navigationTitle("Modifier un exercice")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button { withAnimation {
                        updateExercice()
                    }
                    } label: {
                        Text("Enregistrer")
                    }
                }
            }
        }
        .onAppear {
            exerciceType = exercice.type ?? "Abdominaux"
            exerciceName = exercice.name ?? "Unknown"
            exerciceDetails = exercice.details ?? "Unknown"
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Confirmez la suppression"),
                  message: Text("Voulez-vous vraiment supprimer cet exercice ?"),
                  primaryButton: .destructive(Text("Supprimer")) {
                withAnimation {
                    //supprime l'exercice du context
                    moc.delete(exercice)
                    //supprime l'exercice du container
                    do {
                        try moc.save()
                    } catch {
                        fatalError("An error occured while saving the deletion into the container Core Data : \(error.localizedDescription)")
                    }
                    dismiss()
                }
            },
                  secondaryButton: .cancel())
        }
    }
    func updateExercice() {
        exercice.name = exerciceName
        exercice.type = exerciceType
        exercice.details = exerciceDetails
        
        if moc.hasChanges {
            do {
                try moc.save()
            } catch {
                fatalError("An error occured while saving into the container Core Data : \(error.localizedDescription)")
            }
        }
        dismiss()
    }
    
    func deleteExercice() {
        
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
