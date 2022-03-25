//
//  MainConfiguration.swift
//  Ассоциации
//
//  Created by Никита Упоров on 07.02.2022.
//

import Foundation


class PlayConfigurator: PlayConfiguratorProtocol {
  
    
    
    func configure(view: PlayVCProtocol) {
      
        let interactor = PlayInteractor()
        let presenter = PlayPresenter(view: view, interactor: interactor)
        view.tableViewWithAssociations.dataSource = presenter
        view.tableViewWithAssociations.delegate = presenter
        view.presenter = presenter
       // presenter.interactor = interactor
    }
    
    
}
