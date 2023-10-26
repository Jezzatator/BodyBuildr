//
//  Exercice+CoreDataProperties.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 26/10/2023.
//
//

import Foundation
import CoreData


extension Exercice {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Exercice> {
        return NSFetchRequest<Exercice>(entityName: "Exercice")
    }

    @NSManaged public var details: String?
    @NSManaged public var editable: Bool
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var type: String?

}

extension Exercice : Identifiable {

}
