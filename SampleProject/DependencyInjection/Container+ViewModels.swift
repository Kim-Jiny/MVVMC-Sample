//
//  Container+ViewModels.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation
import Swinject
import SwinjectAutoregistration

extension Container {
    func registerViewModels() {
        autoregister(MainViewModel.self, initializer: MainViewModel.init)
        autoregister(SecondViewModel.self, initializer: SecondViewModel.init)
    }
}
