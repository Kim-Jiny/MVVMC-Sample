//
//  Container+Coordinators.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation
import Swinject
import SwinjectAutoregistration

extension Container {
    func registerCoordinators() {
        autoregister(AppCoordinator.self, initializer: AppCoordinator.init)
        autoregister(MainCoordinator.self, initializer: MainCoordinator.init)
        autoregister(SecondCoordinator.self, initializer: SecondCoordinator.init)
    }
}

