//
//  MyVC.swift
//  Kream
//
//  Created by 이수현 on 9/28/24.
//

import UIKit

class MyVC: UIViewController {

    private let optionsButton: UIButton = {
        let o = UIButton()
        o.setImage(UIImage(systemName: "gearshape"), for: .normal)
        o.tintColor = .black
        o.backgroundColor = .clear
        return o
    }()
    
    private let cameraButton: UIButton = {
        let c = UIButton()
        c.setImage(UIImage(systemName: "camera"), for: .normal)
        c.tintColor = .black
        c.backgroundColor = .clear
        return c
    }()
    
    private let profileImage: UIImageView = {
        let p = UIImageView()
        p.image = UIImage(named: "profileImage")
        p.hoverStyle?.shape = .circle
        return p
    }()
    
    private let idLabel: UILabel = {
        let i = UILabel()
        i.text = "HYUN_iOS"
        i.textColor = .black
        i.textAlignment = .center
        i.font = .systemFont(ofSize: 16)
        return i
    }()
    
    private let userInfo: UILabel = {
        let u = UILabel()
        u.text = "팔로워 326 팔로잉 20"
        u.textColor = .black
        u.textAlignment = .center
        u.font = .systemFont(ofSize: 12)
        return u
    }()
    
    private let manageProfile: UIButton = {
        let m = UIButton()
        m.setTitle("프로필 관리", for: .normal)
        m.titleLabel?.font = .systemFont(ofSize: 9)
        m.setTitleColor(.black, for: .normal)
        m.backgroundColor = .clear
        m.layer.borderWidth = 1
        m.layer.borderColor = UIColor.lightGray.cgColor
        m.layer.cornerRadius = 8
        return m
    }()
    
    private let shareProfile: UIButton = {
        let m = UIButton()
        m.setTitle("프로필 공유", for: .normal)
        m.titleLabel?.font = .systemFont(ofSize: 9)
        m.setTitleColor(.black, for: .normal)
        m.backgroundColor = .clear
        m.layer.borderWidth = 1
        m.layer.borderColor = UIColor.lightGray.cgColor
        m.layer.cornerRadius = 8
        return m
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(optionsButton)
        optionsButton.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(75)
            make.leading.equalTo(view.snp.leading).offset(32.5)
        }
        
        view.addSubview(cameraButton)
        cameraButton.snp.makeConstraints { make in
            make.top.equalTo(optionsButton.snp.top)
            make.trailing.equalToSuperview().offset(-32.5)
        }
        
        view.addSubview(profileImage)
        profileImage.snp.makeConstraints { make in
            make.top.equalTo(optionsButton.snp.bottom).offset(26)
            make.leading.equalTo(optionsButton.snp.leading)
        }
        
        view.addSubview(idLabel)
        idLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.top).offset(21)
            make.leading.equalTo(profileImage.snp.trailing).offset(16)
            make.centerY.equalTo(profileImage.snp.centerY)
            make.height.equalTo(23)
        }
        
        view.addSubview(userInfo)
        userInfo.snp.makeConstraints { make in
            make.top.equalTo(idLabel.snp.bottom).offset(8)
            make.leading.equalTo(idLabel.snp.leading)
        }
        
        view.addSubview(manageProfile)
        
        manageProfile.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(26)
            make.leading.equalTo(profileImage.snp.leading)
            make.width.equalTo(157)
        }
        
        manageProfile.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        
        view.addSubview(shareProfile)
        shareProfile.snp.makeConstraints { make in
            make.top.equalTo(manageProfile)
            make.leading.equalTo(manageProfile.snp.trailing).offset(14)
            make.width.equalTo(157)
        }
    }
    
    @objc func nextVC() {
        print("func called")
        let nextVC = MyPageVC()
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }

    
}
