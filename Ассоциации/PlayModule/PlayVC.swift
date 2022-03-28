//
//  MainVC.swift
//  Ассоциации
//
//  Created by Никита Упоров on 07.02.2022.
//
import UIKit

class PlayVC: UIViewController, PlayVCProtocol {
    
    
    
    
    @IBOutlet weak var currentWordLabel: UILabel!
    
    @IBOutlet weak var tableViewWithAssociations: UITableView!
    
    @IBOutlet weak var textFieldForAcc:UITextField!
    
    let coreData: CoreDataServiceProtocol = CoreDataService()
    
    var presenter: PlayPresenterProtocol!
    
    var configuration: PlayConfiguratorProtocol = PlayConfigurator()
    
    
    override func viewDidLoad() {
        configuration.configure(view: self)
        configureTableView()
        presenter.setWordForAGameLabel()
        //wordsToPlay = presenter.interactor.loadWords()
        
        
    }
    
    private func configureTableView(){
        tableViewWithAssociations.register(UINib(nibName: "playTableView", bundle: nil), forCellReuseIdentifier: PlayCell.reuseIdentifier)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(selectors))
        constantColorNB()
    }
    
    @IBAction func nextWordButton(_ sender: Any) {
        presenter.performNextWord()
    }
    
    @objc func selectors(){
        
    }
    
    
    func constantColorNB(){
        if #available(iOS 15, *) {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithOpaqueBackground()
                self.navigationController?.navigationBar.isTranslucent = true  // pass "true" for fixing iOS 15.0 black bg issue
                self.navigationController?.navigationBar.tintColor = UIColor.white // We need to set tintcolor for iOS 15.0
                appearance.shadowColor = .clear    //removing navigationbar 1 px bottom border.
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    }
    
    
    @IBAction func addAssociaction(_ sender: Any) {
        guard let nameOfCurrentAssociation = textFieldForAcc.text else {return}
        presenter.addAssociationForCurrentWord(name: nameOfCurrentAssociation)
        
    }
    
}



