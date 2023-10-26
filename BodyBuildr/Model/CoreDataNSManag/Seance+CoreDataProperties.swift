//
//  Seance+CoreDataProperties.swift
//  BodyBuildr
//
//  Created by Jérémie - Ada on 26/10/2023.
//
//

import Foundation
import CoreData


extension Seance {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Seance> {
        return NSFetchRequest<Seance>(entityName: "Seance")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var date: Date?
    @NSManaged public var weight: Double
    @NSManaged public var weithType: String?
    @NSManaged public var repetition: Int16
    @NSManaged public var details: String?
    @NSManaged public var exercice: Exercice?

}

extension Seance : Identifiable {

}
