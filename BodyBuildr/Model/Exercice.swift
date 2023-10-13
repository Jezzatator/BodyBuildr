//
//  ExcercisesModel.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 12/10/2023.
//

import SwiftData
import SwiftUI

@Model 
class Exercice {
    
    var id = UUID()
    var name: String
    var type: String
    var details: String
    //var Seances: [Seance]?
    
    init(id: UUID = UUID(), name: String, type: String, details: String) {
        self.id = id
        self.name = name
        self.type = type
        self.details = details
    }
}
