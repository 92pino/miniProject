//
//  MainTabVC.swift
//  InstagramCopy
//
//  Created by JinBae Jeong on 2019/09/20.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

class MainTabVC: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // delegate
        self.delegate = self
    }
    
    // function to create view controllers that exist within tab bar controller
    func configureViewControllers() {
        
        // home feed controller
        
        // search feed controller
        
        // post controller
        
        // notification controller
        
        // profile controller
        
    }
    
    // construct navigation controllers
    func configureNavController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController = UIViewController() -> UINavigationController) {
        
    }
    
}
