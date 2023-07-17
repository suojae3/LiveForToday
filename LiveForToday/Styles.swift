//
//  Buttons.swift
//  LiveForToday
//
//  Created by ㅣ on 2023/07/17.
//

import UIKit

class AuthButtons {
    static func setupButton(_ button: UIButton) {
        button.setTitle("Start your day", for: .normal)
        button.contentHorizontalAlignment = .left
        button.setTitleColor(.black, for: .normal)
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 15
        button.layer.borderColor = UIColor.black.cgColor
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.contentEdgeInsets = UIEdgeInsets(top: 13, left: 13, bottom: 13, right: 13)
    }
}


class Label {
    static func setupLable(_ label: UILabel) {
        
        
        
    }
}


class TextField {
    static func setupTextfield(_ textField: UITextField) {
        
    }
}
