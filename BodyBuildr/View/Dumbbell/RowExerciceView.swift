//
//  TorseView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 13/10/2023.
//

import SwiftData
import SwiftUI

struct RowExerciceView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var exercices: FetchedResults<Exercice>

    @Binding var typeExo: String
        
    var body: some View {
            List {
                ForEach(exercices) { exercice in
                    if exercice.type == typeExo {
                        
                        NavigationLink {
                            Text("SeanceView")
                            //SeanceView(exercice: exercice)
                        } label: {
                        VStack(alignment: .leading) {
                            
                            Text(exercice.name ?? "Unknwon")
                                .font(.headline)
                            Text(exercice.details ?? "Unknwon")
                                .font(.footnote)
                        }
                        .swipeActions(edge: .leading) {
                                    if exercice.editable == true {
                                        NavigationLink("Edit", destination: EditExcerciseView().environmentObject(exercice))
                                            .tint(.green)
                                    }
                        }
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
