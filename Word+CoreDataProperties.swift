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
    @NSManaged public var asss: NSOrderedSet?

}

// MARK: Generated accessors for asss
extension Word {

    @objc(insertObject:inAsssAtIndex:)
    @NSManaged public func insertIntoAsss(_ value: Ass, at idx: Int)

    @objc(removeObjectFromAsssAtIndex:)
    @NSManaged public func removeFromAsss(at idx: Int)

    @objc(insertAsss:atIndexes:)
    @NSManaged public func insertIntoAsss(_ values: [Ass], at indexes: NSIndexSet)

    @objc(removeAsssAtIndexes:)
    @NSManaged public func removeFromAsss(at indexes: NSIndexSet)

    @objc(replaceObjectInAsssAtIndex:withObject:)
    @NSManaged public func replaceAsss(at idx: Int, with value: Ass)

    @objc(replaceAsssAtIndexes:withAsss:)
    @NSManaged public func replaceAsss(at indexes: NSIndexSet, with values: [Ass])

    @objc(addAsssObject:)
    @NSManaged public func addToAsss(_ value: Ass)

    @objc(removeAsssObject:)
    @NSManaged public func removeFromAsss(_ value: Ass)

    @objc(addAsss:)
    @NSManaged public func addToAsss(_ values: NSOrderedSet)

    @objc(removeAsss:)
    @NSManaged public func removeFromAsss(_ values: NSOrderedSet)

}

extension Word : Identifiable {

}
