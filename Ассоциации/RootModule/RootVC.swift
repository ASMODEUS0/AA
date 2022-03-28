//
//  File.swift
//  Ассоциации
//
//  Created by Никита Упоров on 10.02.2022.
//

import UIKit


class RootVC: UIViewController, RootVCProtocol {
  
    
 
    @IBOutlet weak var darkView: UIView!
    
    let nibName1 = "DayGoalCount"
    // MARK: Day goal count section
    @IBOutlet weak var dayGoalCount: UILabel!
    @IBOutlet weak var dayGoalViewIB: DayGoalCountView!
    let dayGoalViewXib = DayGoalCountView()
    
    @IBOutlet weak var doneCount: UILabel!
    @IBOutlet weak var daysInGameCount: UILabel!
    @IBOutlet weak var someInformationCount: UILabel!

    @IBOutlet var tappedViews: [UIView]!
    
    var presenter: RootPresenterProtocol!
    let configure: RootConfigureProtocol = RootConfigure()

    override func viewDidLoad() {
        configure.configure(view: self)
        addtargets()
    
    }
    
    func addtargets(){
        for i in tappedViews{
            let recognizer = UITapGestureRecognizer()
            recognizer.addTarget(self, action: #selector(tappedView))
            i.addGestureRecognizer(recognizer)
        }
        let recognizer = UITapGestureRecognizer()
        recognizer.addTarget(self, action: #selector(tappedView))
        darkView.addGestureRecognizer(recognizer)
    }
    
    @objc func tappedView(_ gestureRecognizer: UITapGestureRecognizer){
        guard let view = gestureRecognizer.view else {return}
        presenter.tappedView(view: view)
    }
    
   internal func showDayView() {
       //dayGoalViewIB.setupVeiw()
       //dayGoalViewIB.
       
       
      
    
    }
    


    
 
    
    
}
