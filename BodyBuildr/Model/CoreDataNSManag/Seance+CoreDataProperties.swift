//
//  Seance+CoreDataProperties.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 27/10/2023.
//
//

import Foundation
import CoreData


extension Seance {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Seance> {
        return NSFetchRequest<Seance>(entityName: "Seance")
    }

    @NSManaged public var date: Date?
    @NSManaged public var details: String?
    @NSManaged public var id: UUID?
    @NSManaged public var weithType: String?
    @NSManaged public var exercice: Exercice?
    @NSManaged public var set: NSSet?

}

// MARK: Generated accessors for set
extension Seance {

    @objc(addSetObject:)
    @NSManaged public func addToSet(_ value: Set)

    @objc(removeSetObject:)
    @NSManaged public func removeFromSet(_ value: Set)

    @objc(addSet:)
    @NSManaged public func addToSet(_ values: NSSet)

    @objc(removeSet:)
    @NSManaged public func removeFromSet(_ values: NSSet)

}

extension Seance : Identifiable {

}
