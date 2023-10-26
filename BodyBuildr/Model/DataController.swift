//
//  DataController.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 20/10/2023.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bodybuildr")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failes to load: \(error.localizedDescription)")
            }
        }
    }
}
