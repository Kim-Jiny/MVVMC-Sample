//
//  MainCoordinator.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation
import UIKit
protocol MainCoordinatorDelegate: AnyObject {
    func pushSecondVC(data: MainListModel)
}

class MainCoordinator: BaseCoordinator {
    var window = UIWindow(frame: UIScreen.main.bounds)
    
    private let viewModel: MainViewModel
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
    
    override func start() {
        let viewController = MainViewController()
        viewModel.coordinatorDelegate = self
        viewController.viewModel = viewModel
        
        navigationController.viewControllers = [viewController]
    }
}

extension MainCoordinator: MainCoordinatorDelegate {
    func pushSecondVC(data: MainListModel) {
        let coordinator = AppDelegate.container.resolve(SecondCoordinator.self)!
        coordinator.fetchData(data: data)
        coordinator.navigationController = self.navigationController
        start(coordinator: coordinator)
    }
}
