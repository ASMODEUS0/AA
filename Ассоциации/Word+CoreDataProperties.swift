//
//  Word+CoreDataProperties.swift
//  Ассоциации
//
//  Created by Никита Упоров on 20.02.2022.
//
//

import Foundation
import CoreData


extension Word {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Word> {
        return NSFetchRequest<Word>(entityName: "Word")
    }

    @NSManaged public var name: String?
    @NSManaged public var association: NSSet?

}

// MARK: Generated accessors for association
extension Word {

    @objc(addAssociationObject:)
    @NSManaged public func addToAssociation(_ value: Associations)

    @objc(removeAssociationObject:)
    @NSManaged public func removeFromAssociation(_ value: Associations)

    @objc(addAssociation:)
    @NSManaged public func addToAssociation(_ values: NSSet)

    @objc(removeAssociation:)
    @NSManaged public func removeFromAssociation(_ values: NSSet)

}

extension Word : Identifiable {

}
