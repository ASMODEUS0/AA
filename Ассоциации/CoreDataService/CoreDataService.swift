//
//  CoreDataService.swift
//  Ассоциации
//
//  Created by Никита Упоров on 20.02.2022.
//

import Foundation
import CoreData

protocol CoreDataServiceProtocol{
    var coreDataStack: CoreDataStack {get}
    func getWordsForGame() -> [String]
    func saveAssociations(assoction: [String: [String]])
    func getPrint()
    func deleteObjects()
}

class CoreDataService: CoreDataServiceProtocol{

    //For first Time
    private let words: [String] = ["Пломбир", "Зарплата", "Пиксели", "Фея", "Король", "The End"]
    
    var coreDataStack: CoreDataStack = CoreDataStack(nameModule: "AssModel")
    
    func getWordsForGame() -> [String] {
         return words
    }
    
    func saveAssociations(assoction: [String : [String]]) {
        deleteObjects()
        for (wordToSave, assToSave ) in assoction{
            let word = Word(context: coreDataStack.managedContext)
            word.name = wordToSave
            var arrayOfAss: [Ass] = []
            for i in assToSave{
                let assEntity = Ass(context: coreDataStack.managedContext)
                assEntity.assName = i
                arrayOfAss.append(assEntity)
            }
            var setOfAss:NSOrderedSet = NSOrderedSet(array: arrayOfAss)
            print(setOfAss.count)

            word.asss = setOfAss
          //let associations = word.asss?.addingObjects(from: [assToSave])

            coreDataStack.saveConetxt()


          //  word.association = assToSave as! NSArray
        }
        
    }
    
    
  
    func getPrint() {
        let fetchRequest: NSFetchRequest<Word> = Word.fetchRequest()
        do{
          let result = try coreDataStack.managedContext.fetch(fetchRequest)
            print(result.first?.asss?.firstObject)
           // print(result.first?.association?.count)
        
            
        }catch{
            print("Wrong Fetch")
        }
        
    }
    
    func deleteObjects() {
        let fetchRequest: NSFetchRequest<Word> = Word.fetchRequest()
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest as! NSFetchRequest<NSFetchRequestResult>)
        
        do{
          try  coreDataStack.managedContext.execute(deleteRequest)
            coreDataStack.saveConetxt()
        }catch let error as NSError{
            print("Error in deleting:\(error.userInfo)")
        }
        
   
    }
    
    
    
    
    
    
    
    
    
}
