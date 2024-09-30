//
//  ViewController.swift
//  Kream
//
//  Created by 이수현 on 9/23/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(loginView)
        loginView.parentVC = self
        
        
        loginView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.edges.equalTo(view)
        }
    }
}

