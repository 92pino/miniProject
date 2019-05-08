//
//  AppDelegate.swift
//  MyMemo
//
//  Created by JinBae Jeong on 06/05/2019.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  var memolist = [MemoData]() // 메모 데이터를 저장할 배열


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.backgroundColor = .white
    
    let vc = UINavigationController(rootViewController: MyMemoViewController())
    
    window?.rootViewController = vc
    window?.makeKeyAndVisible()
    
    return true
  }
  
}

