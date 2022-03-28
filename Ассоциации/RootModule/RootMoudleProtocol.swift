//
//  RootMoudleProtocol.swift
//  Ассоциации
//
//  Created by Никита Упоров on 10.02.2022.
//

import Foundation
import UIKit

protocol RootVCProtocol: AnyObject {
    func showDayView()
  
    

}

protocol RootPresenterProtocol: DayGoalPresenterProtocol, AnyObject{
    var router: RootRouterProtocol! {get set}
    var dayGoalView: DayGoalCountView! {get set}
    func tappedView(view: UIView)
    
}

protocol DayGoalPresenterProtocol{
    
    
}


protocol RootInteractorProtocol: AnyObject{
    
}

protocol RootRouterProtocol:AnyObject{
    func showDayGoalView()
    func closeSecondView()
    func routToPlayModule()
    
}

protocol RootConfigureProtocol: AnyObject{
    func configure(view: RootVC)
   
}
