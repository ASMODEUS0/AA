//
//  RootPresenter.swift
//  Ассоциации
//
//  Created by Никита Упоров on 10.02.2022.
//

import Foundation
import UIKit


class RootPresenter: RootPresenterProtocol{
    var dayGoalView: DayGoalCountView!
    public weak var view: RootVCProtocol?
    public var router: RootRouterProtocol!
    private let interactor = RootInteractor()
    
    
    init(view: RootVC){
        self.view = view
    }
    
    @objc func tappedView(view: UIView){
        
        switch view.tag {
        case 0:
            self.router.showDayGoalView()
        case 1:
            print("First work")
        case 2:
            print("Third work")
        
        case 3:
            self.router.routToPlayModule()
        case 4:
            self.router.closeSecondView()
            print("Dark mod don't work")
              
            
        default:
            fatalError("Wrong view")
        }
        
            
     
        
    }
    
    func someFunc(){
        
    }
    
    
}

enum ViewCases:Int {
  case taskToToday = 0, doneToday = 1, historyOfGame = 2, playNow = 3
   // case
}
