//
//  MainPresenterProtocol.swift
//  Ассоциации
//
//  Created by Никита Упоров on 07.02.2022.
//

import Foundation
import UIKit


class PlayPresenter:NSObject, PlayPresenterProtocol {

    private var wordsToGame: [String]!
    private var wordWithAssociations: [String:[String]] = [:]
    private var currentAssociations:[String] = []
    
    init(view: PlayVCProtocol, interactor: PlayInteractor) {
        self.view = view
        self.interactor = interactor
        wordsToGame = interactor.loadWords()
    }

    weak var view: PlayVCProtocol?
    var router: PlayRouterProtocol!
    var interactor: PlayInteractorProtocol
    
    func setWordForAGameLabel() {
        view?.currentWordLabel.text = wordsToGame.first
    }
    func performNextWord() {
        wordsToGame.remove(at: 0)
        setWordForAGameLabel()
    }
    
    
    func addAssociationForCurrentWord(name: String) {
        currentAssociations.append(name)
        view?.tableViewWithAssociations.reloadData()
        
    }
    

    
}

extension PlayPresenter{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentAssociations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PlayCell.reuseIdentifier, for: indexPath) as? PlayCell else {return UITableViewCell()}
        cell.textForAss.text = currentAssociations[indexPath.item]
        
        return cell
    }
}





