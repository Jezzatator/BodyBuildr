//
//  Muscle+CoreDataProperties.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 27/10/2023.
//
//

import Foundation
import CoreData


extension Muscle {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Muscle> {
        return NSFetchRequest<Muscle>(entityName: "Muscle")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var type: String?
    @NSManaged public var exercice: NSSet?

}

// MARK: Generated accessors for exercice
extension Muscle {

    @objc(addExerciceObject:)
    @NSManaged public func addToExercice(_ value: Exercice)

    @objc(removeExerciceObject:)
    @NSManaged public func removeFromExercice(_ value: Exercice)

    @objc(addExercice:)
    @NSManaged public func addToExercice(_ values: NSSet)

    @objc(removeExercice:)
    @NSManaged public func removeFromExercice(_ values: NSSet)

}

extension Muscle : Identifiable {

}
