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
    
    var mockData = [
        shows(title: "Filme 1", image: "house"),
        shows(title: "Filme 2", image: "lock.doc"),
        shows(title: "Filme 3", image: "terminal"),
        shows(title: "Filme 4", image: "newspaper")
    ]
    
    var mockHeader = [
        titleSection(title: "Section 1"), titleSection(title: "title 2")
    ]
    
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

struct shows {
    var title: String
    var image: String
}

struct titleSection {
    var title: String
}
