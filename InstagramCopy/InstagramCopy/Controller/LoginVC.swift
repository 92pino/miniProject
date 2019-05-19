//
//  LoginVC.swift
//  InstagramCopy
//
//  Created by JinBae Jeong on 14/05/2019.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
