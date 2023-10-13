//
//  TorseView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 13/10/2023.
//

import SwiftData
import SwiftUI

struct RowExerciceView: View {
    @Environment(\.modelContext) var modelContext
    @Query var exercices: [Exercice]

    @Binding var typeExo: String
        
    var body: some View {
            List {
                ForEach(exercices) { exercice in
                    if exercice.type == typeExo {
                        VStack(alignment: .leading) {
                            Text(exercice.name)
                                .font(.headline)
                            Text(exercice.details)
                                .font(.footnote)
                        }
                        .swipeActions(edge: .leading) {
                            NavigationLink("Edit", destination: EditExcerciseView(exercice: exercice))
                                .tint(.green)
                        }
                    }
                }
            .navigationTitle(typeExo)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
