//
//  Set.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 27/10/2023.
//

import SwiftUI

struct SetView: View {
    @State private var isActive: Bool = true
    @State private var setType: String = "Échec"
    @State var weigth: Double = 20
    @State var weigthType = "kg"
    @State var repetitions: Int = 12
    
    var body: some View {
        Section {
            VStack(alignment: .leading) {
                HStack {
                    Text(setType)
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
                            Text(String(repetitions))
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
    }
}

#Preview {
    SetView()
}
