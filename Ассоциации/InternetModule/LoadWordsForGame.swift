//
//  LoadWordsForGame.swift
//  Ассоциации
//
//  Created by Никита Упоров on 20.02.2022.
//

import Foundation


protocol LoadWordsForGameProtocol {
    func loadWordsForTest()->[String]
}


class LoadWordsForGameService: LoadWordsForGameProtocol{
    func loadWordsForTest() -> [String] {
        let words = ["Собака", "Душь","Душа","Тело","Компатибилизм","Капуста","Узник"]
        return words

    }
    
}
