//
//  MainCell.swift
//  Ассоциации
//
//  Created by Никита Упоров on 09.02.2022.
//

import UIKit


class PlayCell: UITableViewCell{
   
    static let reuseIdentifier = String(describing: self.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
    }
    @IBOutlet weak var textForAss:UILabel!

 
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}


