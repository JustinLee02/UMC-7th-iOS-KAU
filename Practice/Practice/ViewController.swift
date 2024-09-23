//
//  ViewController.swift
//  Practice
//
//  Created by 이수현 on 9/23/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    var count = 0
    var countLabel = UILabel()
    let upButton = UIButton()
    let downButton = UIButton()
    let upLabel = UILabel()
    let downLabel = UILabel()
    
    func setup() {
        view.addSubview(countLabel)
        countLabel.text = "\(count)"
        countLabel.font = UIFont.boldSystemFont(ofSize: 42)
        countLabel.textAlignment = .center
        
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            countLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            countLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 327),
            countLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110.5)
        ])
        
        view.addSubview(downButton)
        view.addSubview(upButton)
        
        downButton.translatesAutoresizingMaskIntoConstraints = false
        upButton.translatesAutoresizingMaskIntoConstraints = false
        
        downButton.setImage(UIImage(systemName: "arrowtriangle.down.fill"), for: .normal)
        downButton.backgroundColor = .clear
        downButton.tintColor = .black
        
        upButton.setImage(UIImage(systemName: "arrowtriangle.up.fill"), for: .normal)
        upButton.backgroundColor = .clear
        upButton.tintColor = .black
        
        NSLayoutConstraint.activate([
            downButton.topAnchor.constraint(equalTo: countLabel.bottomAnchor, constant: 17),
            downButton.leadingAnchor.constraint(equalTo: countLabel.leadingAnchor, constant: 18.5)
        ])
        
        NSLayoutConstraint.activate([
            upButton.topAnchor.constraint(equalTo: countLabel.bottomAnchor, constant: 17),
            upButton.trailingAnchor.constraint(equalTo: countLabel.trailingAnchor, constant: -18.5)
        ])
        
        view.addSubview(downLabel)
        view.addSubview(upLabel)
        
        downLabel.translatesAutoresizingMaskIntoConstraints = false
        upLabel.translatesAutoresizingMaskIntoConstraints = false
        
        downLabel.text = "숫자 내리기"
        downLabel.textColor = .black
        downLabel.textAlignment = .center
        downLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        upLabel.text = "숫자 올리기"
        upLabel.textColor = .black
        upLabel.textAlignment = .center
        upLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        NSLayoutConstraint.activate([
            downLabel.centerXAnchor.constraint(equalTo: downButton.centerXAnchor),
            downLabel.leadingAnchor.constraint(equalTo: downButton.leadingAnchor, constant: -24),
            downLabel.topAnchor.constraint(equalTo: downButton.bottomAnchor, constant: 5)
        ])
        
        NSLayoutConstraint.activate([
            upLabel.centerXAnchor.constraint(equalTo: upButton.centerXAnchor),
            upLabel.leadingAnchor.constraint(equalTo: upButton.leadingAnchor, constant: -24),
            upLabel.topAnchor.constraint(equalTo: upButton.bottomAnchor, constant: 5)
        ])
        
        upButton.addTarget(self, action: #selector(upButtonTapped), for: .touchUpInside)
        downButton.addTarget(self, action: #selector(downButtonTapped), for: .touchUpInside)
        
    }
    
    @objc func upButtonTapped() {
        count += 1
        updateCountLabel()
    }
    
    @objc func downButtonTapped() {
        count -= 1
        updateCountLabel()
    }
    
    func updateCountLabel() {
        countLabel.text = "\(count)"
    }
    
    
}

