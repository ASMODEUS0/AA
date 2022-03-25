//
//  RootConfigure.swift
//  Ассоциации
//
//  Created by Никита Упоров on 10.02.2022.
//

import UIKit


class RootConfigure: RootConfigureProtocol{
    
    
    func configure(view: RootVC) {
        let presenter = RootPresenter(view: view)
        let router = RootRouter()
        view.presenter = presenter
        view.dayGoalViewXib.preseneter = presenter
        presenter.dayGoalView = view.dayGoalViewXib
        presenter.router = router
        router.view = view
        
        
    }
    
    
    
}
