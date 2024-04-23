//
//  SecondCoordinator.swift
//  SampleProject
//
//  Created by 김미진 on 4/24/24.
//

import Foundation

class SecondCoordinator: BaseCoordinator {
    private let viewModel: SecondViewModel
    
    init(viewModel: SecondViewModel) {
        self.viewModel = viewModel
    }
    override func start() {
        let viewController = SecondViewController()
        viewController.viewModel = viewModel
        
        navigationController.isNavigationBarHidden = false
//        navigationController.viewControllers = [viewController]
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func fetchData(data: MainListModel) {
        self.viewModel.data = data
    }
    
}
