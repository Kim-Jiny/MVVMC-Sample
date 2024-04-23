//
//  MainViewController.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    var viewModel: MainViewModel?
    let stView: UIStackView = {
        let v = UIStackView(frame: .zero)
        v.spacing = 10
        v.axis = .vertical
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .yellow
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    private func setupUI() {
        self.view.addSubview(stView)
        stView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        for i in viewModel?.data ?? [] {
            let btn = LocateButton(frame: .zero)
            btn.setTitle(i.name, for: .normal)
            stView.addArrangedSubview(btn)
            btn.locationData = i
            btn.snp.makeConstraints { make in
                make.height.equalTo(30)
                make.width.equalTo(70)
            }
            btn.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        }
    }

    @objc private func tapButton(sender: LocateButton) {
        guard let data = sender.locationData else { return }
        self.viewModel?.didTapButton(data: data)
    }
}

class LocateButton: UIButton {
    var locationData: MainListModel?
}

