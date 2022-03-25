//
//  Associations+CoreDataProperties.swift
//  Ассоциации
//
//  Created by Никита Упоров on 20.02.2022.
//
//

import Foundation
import CoreData


extension Associations {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Associations> {
        return NSFetchRequest<Associations>(entityName: "Associations")
    }

    @NSManaged public var associations: String?
    @NSManaged public var word: Word?

}

extension Associations : Identifiable {

}
