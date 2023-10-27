//
//  Exercice+CoreDataProperties.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 27/10/2023.
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
    @NSManaged public var muscle: NSSet?

}

// MARK: Generated accessors for muscle
extension Exercice {

    @objc(addMuscleObject:)
    @NSManaged public func addToMuscle(_ value: Muscle)

    @objc(removeMuscleObject:)
    @NSManaged public func removeFromMuscle(_ value: Muscle)

    @objc(addMuscle:)
    @NSManaged public func addToMuscle(_ values: NSSet)

    @objc(removeMuscle:)
    @NSManaged public func removeFromMuscle(_ values: NSSet)

}

extension Exercice : Identifiable {

}
