//
//  DayGoalCountView.swift
//  Ассоциации
//
//  Created by Никита Упоров on 14.02.2022.
//

import Foundation

import UIKit
import Foundation


class DayGoalCountView: UIView {
    
    var preseneter: DayGoalPresenterProtocol!
    
    @IBAction func exitButton(_ sender: UIButton) {
    }
    
    @IBOutlet weak var pickerViewView: UIPickerView!
    
    @IBAction func changeGoalButton(_ sender: UIButton) {
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
  
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    

}
extension DayGoalCountView: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return " \((row + 1) * 10) Cлов в день "
    }
    
    
}


