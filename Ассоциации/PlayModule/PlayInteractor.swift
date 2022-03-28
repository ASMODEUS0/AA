//
//  PlayInteractor.swift
//  Ассоциации
//
//  Created by Никита Упоров on 20.02.2022.
//

import Foundation

class PlayInteractor: PlayInteractorProtocol{
 
   
    var loadService: LoadWordsForGameProtocol! = LoadWordsForGameService()
    
    weak var presenter: PlayPresenterProtocol?

    var coreDataService: CoreDataServiceProtocol!
    
    func loadWords() -> [String] {
        return loadService.loadWordsForTest()
    }
    
    
    

}
