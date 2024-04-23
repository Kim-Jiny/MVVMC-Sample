//
//  SecondViewModel.swift
//  SampleProject
//
//  Created by 김미진 on 4/24/24.
//

import Foundation
class SecondViewModel {
    var data: MainListModel?
    let weatherServive: WeatherService
    
    init(service: WeatherService) {
        self.weatherServive = service
    }
    
    func getWeatherData() {
        guard let data = data else { return }
        weatherServive.getWeatherInfo(data.location) { [weak self] (data, error)  in
            guard let data = data, error == nil else { return }
            print("@@")
            print(data)
        }
    }
}
