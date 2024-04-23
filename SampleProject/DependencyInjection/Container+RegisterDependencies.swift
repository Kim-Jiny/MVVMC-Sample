//
//  Container+RegisterDependencies.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation
import Swinject

extension Container {
    func registerDependencies() {
        registerServices()
        registerCoordinators()
        registerViewModels()
    }
}
