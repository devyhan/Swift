//
//  AppDelegate.swift
//  UIAlertControlPractice
//
//  Created by 요한 on 2020/04/29.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds) // 해당 기기의 완전한 크기
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

