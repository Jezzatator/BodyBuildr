//
//  BodyBuildrApp.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 12/10/2023.
//

import SwiftUI

@main
struct BodyBuildrApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
