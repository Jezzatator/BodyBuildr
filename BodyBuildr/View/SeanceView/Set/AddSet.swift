//
//  AddSet.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 27/10/2023.
//

import SwiftUI

struct AddSet: View {
    @State var weigth = ""
    @State var weigthType = "kg"
    @State var weigthTypes = ["kg", "lb"]
    @State var repetitions = ""
    @State var details = ""
    @State var setType = ""
    @State var date = Date()
    
    var body: some View {
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

#Preview {
    AddSet()
}
