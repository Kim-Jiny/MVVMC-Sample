//
//  AppCoordinator.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation
import UIKit


class AppCoordinator: BaseCoordinator {
    var window = UIWindow(frame: UIScreen.main.bounds)
    
    
    override init() {
    }
    
    override func start() {
        window.makeKeyAndVisible()
        
        showMainVC()
    }
    
    
    private func showMainVC() {
        removeChildCoordinators()
        
        let coordinator = AppDelegate.container.resolve(MainCoordinator.self)!
        start(coordinator: coordinator)
        
        ViewControllerUtils.setRootViewController(
            window: window,
            viewController: coordinator.navigationController,
            withAnimation: true)
    }
    
}
