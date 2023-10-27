//
//  SeanceView.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 19/10/2023.
//

import SwiftData
import SwiftUI

struct SeanceView: View {
    @Environment(\.modelContext) var modelContext
    @FetchRequest(sortDescriptors: []) var seances: FetchedResults<Seance>
    
    @EnvironmentObject var exercice: Exercice
    
    @State var weigth = ""
    @State var weigthType = "kg"
    @State var weigthTypes = ["kg", "lb"]
    @State var repetitions = ""
    @State var details = ""
    @State var setType = ""
    @State var date = Date()
    
    @State private var isActive = true
    

    var body: some View {
        NavigationStack {
            Form {
                Group {
                    Section("Nom de l'exercice") {
                        HStack {
                            Text(exercice.name ?? "Unknown")
                                .font(.headline)
                            Spacer()
                            Image(systemName: "chart.bar.xaxis.ascending.badge.clock")
                                .font(.headline)
                                .foregroundColor(.accentColor)
                                .symbolEffect(.bounce.down.byLayer, value: isActive)
                                .onTapGesture { withAnimation {
                                    isActive.toggle()
                                }
                                }
                                
                        }
                    }
                    Section("Date"){
                        DatePicker(
                            "Jour de l'entrainement",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                        .datePickerStyle(.compact)
                        .accentColor(.accentColor)
                        .font(.subheadline)
                        
                    }
                }
                .padding(.vertical, -10)
                
                
                    List {
                        
                        Section {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Échauffement")
                                        .font(.headline)
                                        .foregroundStyle(.orange)
                                    Spacer()
                                    Image(systemName: "pencil")
                                        .foregroundColor(.accentColor)
                                        .symbolEffect(.bounce.down.byLayer, value: isActive)
                                        .onTapGesture { withAnimation {
                                            isActive.toggle()
                                        }
                                        }
                                }
                                HStack {
                                    Spacer()
                                    HStack {
                                        VStack(alignment: .center) {
                                            Text("20")
                                                .font(.title)
                                            Text("rep")
                                        }
                                        VStack(alignment: .center) {
                                            Text("20")
                                            Text("rep")
                                            Text("12/10")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    Image(systemName: "x.circle")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    Spacer()
                                    HStack {
                                        VStack(alignment: .center) {
                                            Text("10")
                                                .font(.title)
                                            Text("kg")
                                        }
                                        VStack(alignment: .center) {
                                            Text("8")
                                            Text("kg")
                                            Text("12/10")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                            }
                        }
                        
                        Section {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Set #1")
                                        .font(.headline)
                                    Spacer()
                                    Image(systemName: "pencil")
                                        .foregroundColor(.accentColor)
                                        .symbolEffect(.bounce.down.byLayer, value: isActive)
                                        .onTapGesture { withAnimation {
                                            isActive.toggle()
                                        }
                                        }
                                }
                                HStack {
                                    Spacer()
                                    HStack {
                                        VStack(alignment: .center) {
                                            Text("12")
                                                .font(.title)
                                            Text("rep")
                                        }
                                        VStack(alignment: .center) {
                                            Text("14")
                                            Text("rep")
                                            Text("25/10")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    Image(systemName: "x.circle")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    Spacer()
                                    HStack {
                                        VStack(alignment: .center) {
                                            Text("20")
                                                .font(.title)
                                            Text("kg")
                                        }
                                        VStack(alignment: .center) {
                                            Text("20")
                                            Text("kg")
                                            Text("25/10")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                            }
                        }
                        
                        Section {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Set #2")
                                        .font(.headline)
                                    Spacer()
                                    Image(systemName: "pencil")
                                        .foregroundColor(.accentColor)
                                        .symbolEffect(.bounce.down.byLayer, value: isActive)
                                        .onTapGesture { withAnimation {
                                            isActive.toggle()
                                        }
                                        }
                                }
                                HStack {
                                    Spacer()
                                    HStack {
                                        VStack(alignment: .center) {
                                            Text("12")
                                                .font(.title)
                                            Text("rep")
                                        }
                                        VStack(alignment: .center) {
                                            Text("12")
                                            Text("rep")
                                            Text("25/10")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    Image(systemName: "x.circle")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    Spacer()
                                    HStack {
                                        VStack(alignment: .center) {
                                            Text("20")
                                                .font(.title)
                                            Text("kg")
                                        }
                                        VStack(alignment: .center) {
                                            Text("20")
                                            Text("kg")
                                            Text("25/10")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                            }
                        }
                        
                        Section {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Échec")
                                        .font(.headline)
                                        .foregroundStyle(.red)
                                    Spacer()
                                    Image(systemName: "pencil")
                                        .foregroundColor(.accentColor)
                                        .symbolEffect(.bounce.down.byLayer, value: isActive)
                                        .onTapGesture { withAnimation {
                                            isActive.toggle()
                                        }
                                        }
                                }
                                HStack {
                                    Spacer()
                                    HStack {
                                        VStack(alignment: .center) {
                                            Text("8")
                                                .font(.title)
                                            Text("rep")
                                        }
                                        VStack(alignment: .center) {
                                            Text("12")
                                            Text("rep")
                                            Text("25/10")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    Image(systemName: "x.circle")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    Spacer()
                                    HStack {
                                        VStack(alignment: .center) {
                                            Text("25")
                                                .font(.title)
                                            Text("kg")
                                        }
                                        VStack(alignment: .center) {
                                            Text("20")
                                            Text("kg")
                                            Text("25/10")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                            }
                        }
                        
                        Section {
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("Nouveau")
                                            .font(.headline)
                                            .foregroundColor(.accentColor)
                                        Spacer()
                                        Picker("", selection: $setType) {
                                            Text("Échauffement")
                                            Text("Set")
                                            Text("Échec")
                                        }
                                    }
                                    HStack {
                                        Spacer()
                                        HStack {
                                            VStack(alignment: .center) {
                                                TextField("", text: $repetitions)
                                                    .font(.title)
                                                Text("rep")
                                            }
                                            VStack(alignment: .center) {
                                                Text("20")
                                                Text("rep")
                                                Text("25/10")
                                            }
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        }
                                        Spacer()
                                        HStack {
                                            VStack(alignment: .center) {
                                                TextField("", text: $weigth)
                                                    .font(.title)
                                                Picker("",selection: $weigthType) {
                                                    ForEach(weigthTypes, id: \.self) {
                                                        Text($0)
                                                    }
                                                }
                                            }
                                            VStack(alignment: .center) {
                                                Text("20")
                                                Text("kg")
                                                Text("25/10")
                                            }
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        }
                                        Spacer()
                                }
                            }
                            HStack(alignment: .center) {
                                Spacer()
                                Button {
                                print("Valider")
                                } label: {
                                    Text("Valider")
                                }
                                Spacer()
                            }
                        }
                    }
            }
            .navigationTitle("Création d'une séance")
            .navigationBarTitleDisplayMode(.inline)
        }
        .ignoresSafeArea(.keyboard)
        .scrollDismissesKeyboard(.interactively)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                HStack {
                    Spacer()
                    Button {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    } label: { Text("Done") }
                }.padding()
            }
        }
    }
}

#Preview {
    SeanceView()
        .environmentObject(ExerciceMock())
}

class ExerciceMock: ObservableObject {
    @Published var name: String = "Dev Couché"
    @Published var details: String = "Nulla amet nostrud sint est eiusmod tempor quis sunt ad sit aliqua anim reprehenderit eu adipiscing ea."
    @Published var id: String = "0FDA27B3-72F5-43DA-A1C2-5B59C285DBD5"
    @Published var type: String = "Torse"
    
}
