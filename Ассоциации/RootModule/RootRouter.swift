//
//  RootRouter.swift
//  Ассоциации
//
//  Created by Никита Упоров on 10.02.2022.
//

import UIKit


class RootRouter: RootRouterProtocol{
   
   
   weak var view: RootVC!
    
    func showDayGoalView() {

      //  darkeningTheScreen()

        let nibName = "DayGoal"
        let nib = UINib(nibName: nibName, bundle: nil)
        let view = nib.instantiate(withOwner: DayGoalCountView.self, options: nil).first as! UIView
        darkeningTheScreen()

        self.view.dayGoalViewIB.addSubview(view)
        view.frame = self.view.dayGoalViewIB.bounds
        self.view.dayGoalViewIB.alpha = 1

    }
    
    func closeSecondView() {
        self.view.darkView.alpha = 0
        self.view.dayGoalViewIB.alpha = 0
    }
    
    
    
    func darkeningTheScreen(){
        self.view.darkView.alpha = 0.5
     
    }
    
    
    func routToPlayModule() {
        self.view.performSegue(withIdentifier: "playModule", sender: self.view)
    }
    

    
    
    
    
    
//    func loadFromNib() -> UIView{
//       // let bundle = Bundle(for: self)
//
//    }
//
//    func setupVeiw(){
//        var dayGoalViews = UIView()
//    dayGoalViews = loadFromNib()
//    dayGoalViews.frame = dayGoalViewIB.frame
//    dayGoalViews.autoresizingMask = []
//        dayGoalViewIB.addSubview(dayGoalViews)
//    }
    
}
