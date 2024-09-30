//
//  MyPageVC.swift
//  Kream
//
//  Created by 이수현 on 9/28/24.
//

import UIKit

class MyPageVC: UIViewController {

    let mypageVC = ManageProfileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(mypageVC)
        mypageVC.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
    }
    
}
