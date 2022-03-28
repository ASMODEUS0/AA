//
//  CoreDataStack.swift
//  Ассоциации
//
//  Created by Никита Упоров on 20.02.2022.
//

import Foundation
import CoreData

class CoreDataStack{
    
    lazy var managedContext: NSManagedObjectContext = {
        return storeContainer.viewContext
    }()
    
    var nameModule:String
    
    init(nameModule: String){
        self.nameModule = nameModule
    }
    
  private  lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: nameModule)
        container.loadPersistentStores { _, error in
            if let error = error as? NSError{
                print("Error: \(error.userInfo)")
            }
         
        }
        return container
    }()
    
    
    public func saveConetxt(){
        guard managedContext.hasChanges else {return}
        do{
            try managedContext.save()
        }catch let error as NSError{
            print("Error: \(error.userInfo)")
        }
    }
//    public func deleteEntity(){
//        let fetchRequest: NSFetchRequest<Word> = Word.fetchRequest()
//    }
    
}
