//
//  ManageProfileView.swift
//  Kream
//
//  Created by 이수현 on 9/29/24.
//

import UIKit

class ManageProfileView: UIView {

    private let manageProfileLabel: UILabel = {
        let m = UILabel()
        m.text = "프로필 관리"
        m.textColor = .black
        m.font = .systemFont(ofSize: 16)
        m.textAlignment = .center
        return m
    }()
    
    private let backButton: UIButton = {
        let b = UIButton()
        b.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
        b.tintColor = .black
        b.backgroundColor = .clear
        return b
    }()
    
    private let userImage: UIImageView = {
        let u = UIImageView()
        u.image = UIImage(named: "profileImage")
        u.hoverStyle?.shape = .circle
        return u
    }()
    
    private let profileInfo: UILabel = {
        let p = UILabel()
        p.text = "프로필 정보"
        p.textColor = .black
        p.font = .boldSystemFont(ofSize: 18)
        return p
    }()
    
    private let userId: UILabel = {
        let u = UILabel()
        u.text = "유저 이메일"
        u.textColor = .black
        u.font = .systemFont(ofSize: 14)
        return u
    }()
    
    private let userPw: UILabel = {
        let u = UILabel()
        u.text = "유저 비밀번호"
        u.textColor = .black
        u.font = .systemFont(ofSize: 14)
        return u
    }()
    
    private let idTextField: UITextField = {
        let i = UITextField()
        i.placeholder = "\t새로운 이메일을 입력해주세요!"
        i.layer.borderWidth = 1
        i.layer.borderColor = UIColor.lightGray.cgColor
        i.backgroundColor = .clear
        i.layer.cornerRadius = 10
        return i
    }()
    
    private let pwTextField: UITextField = {
        let i = UITextField()
        i.placeholder = "\t새로운 비밀번호를 입력해주세요!"
        i.layer.borderWidth = 1
        i.layer.borderColor = UIColor.lightGray.cgColor
        i.backgroundColor = .clear
        i.layer.cornerRadius = 10
        return i
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(67)
            make.leading.equalToSuperview().offset(27)
        }
        
        addSubview(manageProfileLabel)
        manageProfileLabel.snp.makeConstraints { make in
            make.top.equalTo(backButton.snp.top)
            make.centerX.equalToSuperview()
        }
        
        addSubview(userImage)
        userImage.snp.makeConstraints { make in
            make.top.equalTo(manageProfileLabel.snp.bottom).offset(52)
            make.centerX.equalTo(manageProfileLabel.snp.centerX)
        }
        
        addSubview(profileInfo)
        profileInfo.snp.makeConstraints { make in
            make.top.equalTo(userImage.snp.bottom).offset(20)
            make.leading.equalTo(backButton.snp.leading)
            make.centerX.equalToSuperview()
        }
        
        addSubview(userId)
        userId.snp.makeConstraints { make in
            make.top.equalTo(profileInfo).offset(23)
            make.leading.equalTo(profileInfo.snp.leading)
        }
        
        addSubview(idTextField)
        idTextField.snp.makeConstraints { make in
            make.top.equalTo(userId.snp.bottom).offset(10)
            make.leading.equalTo(userId.snp.leading)
            make.centerX.equalToSuperview()
            make.height.equalTo(32)
        }
        
        addSubview(userPw)
        userPw.snp.makeConstraints { make in
            make.top.equalTo(idTextField.snp.bottom).offset(23)
            make.leading.equalTo(idTextField.snp.leading)
        }
        
        addSubview(pwTextField)
        pwTextField.snp.makeConstraints { make in
            make.top.equalTo(userPw.snp.bottom).offset(10)
            make.leading.equalTo(userPw.snp.leading)
            make.centerX.equalToSuperview()
            make.height.equalTo(32)
        }
    }

}
