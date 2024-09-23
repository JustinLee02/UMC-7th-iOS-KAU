//
//  ViewController.swift
//  Kream
//
//  Created by 이수현 on 9/23/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUp()
    }
    
    private let titleImage: UIImageView = {
        let l = UIImageView()
        l.image = UIImage(named: "크림 로고")
        l.contentMode = .scaleAspectFit
        return l
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
        t.layer.cornerRadius = 15
        t.layer.borderWidth = 1
        t.layer.borderColor = UIColor.lightGray.cgColor
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
        t.placeholder = "\t예) 비밀번호를 입력해주세요"
        t.layer.cornerRadius = 15
        t.layer.borderWidth = 1
        t.layer.borderColor = UIColor.lightGray.cgColor
        return t
    }()
    
    private let loginButton: UIButton = {
        let b = UIButton()
        b.backgroundColor = .lightGray
        b.setTitle("로그인", for: .normal)
        b.titleLabel?.font = .systemFont(ofSize: 14)
        b.titleLabel?.textColor = .white
        b.layer.cornerRadius = 8
        return b
    }()
    
    private let kakaoLogin: UIButton = {
        let b = UIButton()
        b.backgroundColor = .clear
        b.setTitle("카카오로 로그인", for: .normal)
        b.setTitleColor(.black, for: .normal)
        b.titleLabel?.font = .boldSystemFont(ofSize: 13)
        b.titleLabel?.textAlignment = .center
        b.layer.cornerRadius = 8
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.lightGray.cgColor
        return b
    }()
    
    private let appleLogin: UIButton = {
        let b = UIButton()
        b.backgroundColor = .clear
        b.setTitle("Apple로 로그인", for: .normal)
        b.setTitleColor(.black, for: .normal)
        b.titleLabel?.font = .boldSystemFont(ofSize: 13)
        b.titleLabel?.textAlignment = .center
        b.layer.cornerRadius = 8
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.lightGray.cgColor
        return b
    }()
    
    private let kakaoImage: UIImageView = {
       let i = UIImageView()
        i.image = UIImage(named: "Path")
        i.contentMode = .scaleAspectFit
        return i
    }()
    
    private let appleImage: UIImageView = {
       let i = UIImageView()
        i.image = UIImage(named: "Vector")
        i.contentMode = .scaleAspectFit
        return i
    }()
    
    func setUp() {
        view.addSubview(titleImage)
        titleImage.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(126)
            make.centerX.equalTo(view.snp.centerX)
            make.leading.equalTo(view.snp.leading).offset(53)
            make.height.equalTo(75)
        }
        
        view.addSubview(emailLabel)
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(titleImage.snp.top).offset(87)
            make.leading.equalTo(titleImage.snp.leading).offset(-8)
            make.centerX.equalTo(titleImage.snp.centerX)
        }
        
        view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.leading.equalTo(emailLabel.snp.leading)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(34)
        }
        
        view.addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(17)
            make.leading.equalTo(emailTextField.snp.leading)
            make.centerX.equalTo(view.snp.centerX)
        }
        
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(8)
            make.leading.equalTo(passwordLabel.snp.leading)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(34)
        }
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(17)
            make.leading.equalTo(passwordTextField.snp.leading)
            make.centerX.equalTo(view.snp.centerX)
        }
        
        view.addSubview(kakaoLogin)
        kakaoLogin.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(87)
            make.leading.equalTo(loginButton.snp.leading).offset(2.5)
            make.centerX.equalTo(loginButton.snp.centerX)
        }
        
        view.addSubview(appleLogin)
        appleLogin.snp.makeConstraints { make in
            make.top.equalTo(kakaoLogin.snp.bottom).offset(22)
            make.leading.equalTo(kakaoLogin.snp.leading)
            make.centerX.equalTo(kakaoLogin.snp.centerX)
        }
        
        kakaoLogin.addSubview(kakaoImage)
        kakaoImage.snp.makeConstraints { make in
            make.leading.equalTo(kakaoLogin.snp.leading).offset(17)
            make.centerY.equalTo(kakaoLogin.snp.centerY)
            make.top.equalTo(kakaoLogin.snp.top).offset(11)
        }
        
        appleLogin.addSubview(appleImage)
        appleImage.snp.makeConstraints { make in
            make.leading.equalTo(appleLogin.snp.leading).offset(17)
            make.centerY.equalTo(appleLogin.snp.centerY)
            make.top.equalTo(appleLogin.snp.top).offset(11)
        }
        
        
        
        
        
    }


}

