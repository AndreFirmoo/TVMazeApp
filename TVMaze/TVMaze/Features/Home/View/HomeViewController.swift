//
//  HomeViewController.swift
//  TVMaze
//
//  Created by ANDRE FIRMO on 26/04/21.
//

import UIKit

protocol HomePresenter {
    
}

typealias HomePresenterCoordinator = HomePresenter & Coordinator

class HomeViewController: UIViewController {

    var coordinator: HomePresenterCoordinator?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
    }
}
