//
//  MainViewModel.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation
class MainViewModel {
    var data: [MainListModel]
    weak var coordinatorDelegate: MainCoordinatorDelegate?
    
    init(service: WeatherService) {
        self.data = service.getMainDumpData()
    }
    
    func didTapButton(data: MainListModel) {
        self.coordinatorDelegate?.pushSecondVC(data: data)
    }
   
}
