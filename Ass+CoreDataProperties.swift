//
//  Ass+CoreDataProperties.swift
//  Ассоциации
//
//  Created by Никита Упоров on 20.02.2022.
//
//

import Foundation
import CoreData


extension Ass {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ass> {
        return NSFetchRequest<Ass>(entityName: "Ass")
    }

    @NSManaged public var assName: String?

}

extension Ass : Identifiable {

}
