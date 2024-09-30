//
//  MyPageView.swift
//  Kream
//
//  Created by 이수현 on 9/28/24.
//

import UIKit


class MyPageView: UIView {
    
    weak var parentVC: UIViewController?

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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupUI() {
        addSubview(optionsButton)
        optionsButton.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(75)
            make.leading.equalTo(self.snp.leading).offset(32.5)
        }
        
        addSubview(cameraButton)
        cameraButton.snp.makeConstraints { make in
            make.top.equalTo(optionsButton.snp.top)
            make.trailing.equalToSuperview().offset(-32.5)
        }
        
        addSubview(profileImage)
        profileImage.snp.makeConstraints { make in
            make.top.equalTo(optionsButton.snp.bottom).offset(26)
            make.leading.equalTo(optionsButton.snp.leading)
        }
        
        addSubview(idLabel)
        idLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.top).offset(21)
            make.leading.equalTo(profileImage.snp.trailing).offset(16)
            make.centerY.equalTo(profileImage.snp.centerY)
            make.height.equalTo(23)
        }
        
        addSubview(userInfo)
        userInfo.snp.makeConstraints { make in
            make.top.equalTo(idLabel.snp.bottom).offset(8)
            make.leading.equalTo(idLabel.snp.leading)
        }
        
        addSubview(manageProfile)
        
        manageProfile.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(26)
            make.leading.equalTo(profileImage.snp.leading)
            make.width.equalTo(157)
            make.height.equalTo(40)
        }
        
        manageProfile.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        
        addSubview(shareProfile)
        shareProfile.snp.makeConstraints { make in
            make.top.equalTo(manageProfile)
            make.leading.equalTo(manageProfile.snp.trailing).offset(14)
            make.width.equalTo(157)
        }
    }
    
    @objc func nextVC() {
        print("func called")
        guard let parentVC = parentVC else {
            print("nil")
            return
        }
        print("success")
        let nextVC = MyPageVC()
        nextVC.modalPresentationStyle = .fullScreen
        parentVC.present(nextVC, animated: true, completion: nil)
    }

    
}
