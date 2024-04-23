//
//  SecondViewController.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    var viewModel: SecondViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.viewModel?.getWeatherData()
    }
    private func setupUI() {
        self.view.backgroundColor = .yellow
    }
}
