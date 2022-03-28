//
//  MainProtocols.swift
//  Ассоциации
//
//  Created by Никита Упоров on 07.02.2022.
//

import Foundation
import UIKit

protocol PlayConfiguratorProtocol {
    func configure(view: PlayVCProtocol)
}



protocol PlayRouterProtocol{
    
}

protocol PlayInteractorProtocol {
    var presenter: PlayPresenterProtocol?{get set}
    var coreDataService: CoreDataServiceProtocol! {get}
    var loadService: LoadWordsForGameProtocol!{get}
    func loadWords() ->[String]
    
}


protocol PlayPresenterProtocol: NSObject, UITableViewDelegate, UITableViewDataSource{
   // var wordsToGame:[String]! {get set}
    var router: PlayRouterProtocol! {set get}
    func addAssociationForCurrentWord(name: String)
    var interactor: PlayInteractorProtocol {get set}
    func setWordForAGameLabel()
    func performNextWord()
    
}

protocol PlayVCProtocol: AnyObject{
    var tableViewWithAssociations: UITableView! {get}
    var presenter: PlayPresenterProtocol! {get set}
    var currentWordLabel: UILabel! {get set}
  //  var tableViewWithAssociations: UITableView! {get}
}
