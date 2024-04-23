//
//  MainListModel.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation

struct MainListModel {
    let name: String
    let location: Location
}

protocol MainListModelData {
    func getDumpData() -> [MainListModel]
}

final class MainListModelDataImp: MainListModelData {
    private let Data = [
    MainListModel(name: "Seoul", location: Location(latitude: 37.5116828, longitude: 127.059151)),
    MainListModel(name: "Suwon", location: Location(latitude: 37.2460106, longitude: 127.0486229))//37.2460106!4d127.0486229
    ]
    
    func getDumpData() -> [MainListModel] {
        return self.Data
    }
}
