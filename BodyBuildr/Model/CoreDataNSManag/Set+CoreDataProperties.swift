//
//  Set+CoreDataProperties.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 27/10/2023.
//
//

import Foundation
import CoreData


extension Set {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Set> {
        return NSFetchRequest<Set>(entityName: "Set")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var weight: Double
    @NSManaged public var repetitions: Int16
    @NSManaged public var setType: String?
    @NSManaged public var seance: Seance?

}

extension Set : Identifiable {

}
