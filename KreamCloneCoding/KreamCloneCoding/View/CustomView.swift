//
//  File.swift
//  KreamCloneCoding
//
//  Created by 이수현 on 9/22/24.
//

import Foundation
import UIKit

class CustomView: UIView {
    
    var count = Count().count
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setLayout()
        setButton()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var countLabel: UILabel = {
        let l = UILabel()
        
        l.text = "\(count)"
        l.textColor = .black
        l.textAlignment = .center
        l.font = UIFont.boldSystemFont(ofSize: 42)
        
        l.translatesAutoresizingMaskIntoConstraints = false
        
        return l
    }()
    
    private let upButton: UIButton = {
        let b = UIButton()
        b.setImage(UIImage(systemName: "arrowtriangle.up.fill"), for: .normal)
        b.backgroundColor = .clear
        b.tintColor = .black
        
        b.translatesAutoresizingMaskIntoConstraints = false
        
        return b
    }()
    
    private let downButton: UIButton = {
        let b = UIButton()
        b.setImage(UIImage(systemName: "arrowtriangle.down.fill"), for: .normal)
        b.backgroundColor = .clear
        b.tintColor = .black
        
        b.translatesAutoresizingMaskIntoConstraints = false
        
        return b
    }()
    
    private let upLabel: UILabel = {
        let l = UILabel()
        l.text = "숫자 올리기"
        l.textColor = .black
        l.textAlignment = .center
        l.font = UIFont.boldSystemFont(ofSize: 16)
        
        l.translatesAutoresizingMaskIntoConstraints = false
        
        return l
    }()
    
    private let downLabel: UILabel = {
        let l = UILabel()
        l.text = "숫자 내리기"
        l.textColor = .black
        l.textAlignment = .center
        l.font = UIFont.boldSystemFont(ofSize: 16)
        
        l.translatesAutoresizingMaskIntoConstraints = false
        
        return l
    }()
    
    func setLayout() {
        self.addSubview(countLabel)
        self.addSubview(upButton)
        self.addSubview(downButton)
        self.addSubview(upLabel)
        self.addSubview(downLabel)
        
        NSLayoutConstraint.activate([
            countLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 327),
            countLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            countLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 110.5),
    
            downButton.topAnchor.constraint(equalTo: countLabel.bottomAnchor, constant: 20),
            downButton.leadingAnchor.constraint(equalTo: countLabel.leadingAnchor, constant: 18.5),
            
            upButton.topAnchor.constraint(equalTo: countLabel.bottomAnchor, constant: 20),
            upButton.trailingAnchor.constraint(equalTo: countLabel.trailingAnchor, constant: -18.5),
            
            downLabel.topAnchor.constraint(equalTo: downButton.bottomAnchor, constant: 5),
            downLabel.leadingAnchor.constraint(equalTo: downButton.leadingAnchor, constant: -24),
            downLabel.centerXAnchor.constraint(equalTo: downButton.centerXAnchor),
            
            upLabel.topAnchor.constraint(equalTo: upButton.bottomAnchor, constant: 5),
            upLabel.trailingAnchor.constraint(equalTo: upButton.trailingAnchor, constant: 24),
            upLabel.centerXAnchor.constraint(equalTo: upButton.centerXAnchor)
        ])
    }
    
    func setButton() {
        upButton.addTarget(self, action: #selector(increase), for: .touchUpInside)
        downButton.addTarget(self, action: #selector(decrease), for: .touchUpInside)
    }
    
    @objc func increase() {
        count += 1
        countLabel.text = "\(count)"
    }
    
    @objc func decrease() {
        count -= 1
        countLabel.text = "\(count)"
    }
}
