//
//  BodyBuildrApp.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 12/10/2023.
//

import SwiftData
import SwiftUI

@main
struct BodyBuildrApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Exercice.self)
    }
}
