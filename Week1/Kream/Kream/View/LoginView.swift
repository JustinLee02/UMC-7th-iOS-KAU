//
//  LoginView.swift
//  Kream
//
//  Created by 이수현 on 9/28/24.
//

import UIKit
import SnapKit

class LoginView: UIView {
    
    weak var parentVC: UIViewController?
    
    private let logoImage: UIImageView = {
        let i = UIImageView()
        i.image = UIImage(named: "크림 로고")
        i.contentMode = .scaleAspectFit
        return i
    }()
    
    private let emailLabel: UILabel = {
        let l = UILabel()
        l.text = "이메일 주소"
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        l.textAlignment = .left
        return l
    }()
    
    private let emailTextField: UITextField = {
        let t = UITextField()
        t.placeholder = "\t예) kream@kream.co.kr"
        t.font = .systemFont(ofSize: 14)
        t.layer.borderWidth = 1
        t.layer.borderColor = UIColor.lightGray.cgColor
        t.layer.cornerRadius = 15
        return t
    }()
    
    private let passwordLabel: UILabel = {
        let l = UILabel()
        l.text = "비밀번호"
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        l.textAlignment = .left
        return l
    }()
    
    private let passwordTextField: UITextField = {
        let t = UITextField()
        t.placeholder = "\t6자리 이상 입력"
        t.font = .systemFont(ofSize: 14)
        t.layer.borderWidth = 1
        t.layer.borderColor = UIColor.lightGray.cgColor
        t.layer.cornerRadius = 15
        return t
    }()
    
    private let loginButton: UIButton = {
        let b = UIButton()
        b.setTitle("로그인", for: .normal)
        b.titleLabel?.font = .systemFont(ofSize: 14)
        b.titleLabel?.textColor = .white
        b.backgroundColor = .lightGray
        b.layer.cornerRadius = 8
        return b
    }()
    
    private let kakaoButton: UIButton = {
        let b = UIButton()
        b.setTitle("카카오로 로그인", for: .normal)
        b.titleLabel?.font = .boldSystemFont(ofSize: 13)
        b.setTitleColor(.black, for: .normal)
        b.titleLabel?.textAlignment = .center
        b.backgroundColor = .clear
        b.layer.cornerRadius = 8
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.lightGray.cgColor
        return b
    }()
    
    private let appleButton: UIButton = {
        let b = UIButton()
        b.setTitle("Apple로 로그인", for: .normal)
        b.titleLabel?.font = .boldSystemFont(ofSize: 13)
        b.setTitleColor(.black, for: .normal)
        b.titleLabel?.textAlignment = .center
        b.backgroundColor = .clear
        b.layer.cornerRadius = 8
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.lightGray.cgColor
        return b
    }()
    
    private let kakaoLogo: UIImageView = {
        let i = UIImageView()
        i.image = UIImage(named: "Path")
        return i
    }()
    
    private let appleLogo: UIImageView = {
        let i = UIImageView()
        i.image = UIImage(named: "Vector")
        return i
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    func setupUI() {
        addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(126)
            make.leading.equalToSuperview().offset(24)
            make.centerX.equalToSuperview()
        }
        
        addSubview(emailLabel)
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(87)
            make.leading.equalTo(logoImage.snp.leading)
            make.centerX.equalTo(logoImage.snp.centerX)
        }
        
        addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.leading.equalTo(emailLabel.snp.leading)
            make.centerX.equalTo(logoImage.snp.centerX)
            make.height.equalTo(34)
        }
        
        addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(17)
            make.leading.equalTo(emailTextField.snp.leading)
            make.centerX.equalTo(logoImage.snp.centerX)
        }
        
        addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(8)
            make.leading.equalTo(passwordLabel.snp.leading)
            make.centerX.equalTo(logoImage.snp.centerX)
            make.height.equalTo(34)
        }
        
        addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(17)
            make.leading.equalTo(passwordTextField)
            make.centerX.equalTo(passwordTextField.snp.centerX)
            make.height.equalTo(38)
        }
        
        loginButton.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        
        addSubview(kakaoButton)
        kakaoButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(87)
            make.leading.equalTo(loginButton.snp.leading)
            make.centerX.equalTo(loginButton.snp.centerX)
            make.height.equalTo(40)
        }
        
        addSubview(appleButton)
        appleButton.snp.makeConstraints { make in
            make.top.equalTo(kakaoButton.snp.bottom).offset(22)
            make.leading.equalTo(kakaoButton.snp.leading)
            make.centerX.equalTo(kakaoButton.snp.centerX)
            make.height.equalTo(40)
        }
        
        kakaoButton.addSubview(kakaoLogo)
        kakaoLogo.snp.makeConstraints { make in
            make.top.equalTo(kakaoButton.snp.top).offset(11)
            make.centerY.equalTo(kakaoButton.snp.centerY)
            make.leading.equalTo(kakaoButton.snp.leading).offset(17)
        }
        
        appleButton.addSubview(appleLogo)
        appleLogo.snp.makeConstraints { make in
            make.top.equalTo(appleButton.snp.top).offset(11)
            make.centerY.equalTo(appleButton.snp.centerY)
            make.leading.equalTo(appleButton.snp.leading).offset(17)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func nextVC() {
        guard let parentVC = parentVC else { return } // 부모 뷰 컨트롤러가 존재할 때만 실행
        let nextVC = TabBarViewController()
        nextVC.modalPresentationStyle = .fullScreen
        parentVC.present(nextVC, animated: true, completion: nil) // 부모 뷰 컨트롤러에서 present 호출
    }
}
