//
//  Container+Services.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation
import Swinject
import SwinjectAutoregistration

extension Container {
    func registerServices() {
        autoregister(WeatherService.self, initializer: WeatherService.init).inObjectScope(.container)
    }
}
