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

class HomeViewController: BaseViewController, HasCodeView {

    typealias CustomView = HomeView
    var coordinator: HomePresenterCoordinator?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        setupView()
    }
    deinit {
        coordinator?.didFinish(child: nil)
    }
    private func setupView() {
        view = HomeView()
        customView?.collectioView.delegate = self
        customView?.collectioView.dataSource = self
      
    }
}
