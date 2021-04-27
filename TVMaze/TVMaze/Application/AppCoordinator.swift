//
//  AppCoordinator.swift
//  TVMaze
//
//  Created by ANDRE FIRMO on 26/04/21.
//

import UIKit

final class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinator: [Coordinator] = []
    
    var parentCoordinator: Coordinator?
    
    init() {
        navigationController = UINavigationController()
    }
    
    
    func start() {}
}

extension AppCoordinator: AppPresenter {
    func showHome() {
        let coordinator = HomeCoordinator(navigationController: navigationController)
        coordinator.parentCoordinator = self
        add(childCoordinator: coordinator)
        coordinator.start()
    }
    
    
}
