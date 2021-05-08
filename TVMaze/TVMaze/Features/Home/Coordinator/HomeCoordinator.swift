//
//  HomeCoordinator.swift
//  TVMaze
//
//  Created by ANDRE FIRMO on 26/04/21.
//

import UIKit

final class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinator: [Coordinator] = []
    
    var parentCoordinator: Coordinator?
    
    // TODO: - Implementar ViewModel 
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeViewController = HomeViewController()
        homeViewController.coordinator = self
        navigationController.pushViewController(homeViewController, animated: true)
    }
}

extension HomeCoordinator: HomePresenter {
    
}
