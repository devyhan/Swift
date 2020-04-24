//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by 요한 on 2020/04/23.
//  Copyright © 2020 요한. All rights reserved.
//

// 12이하에 적용하려면 SceneDelegate.swift 삭제
//

// [ AppDelegate만 사용할 때 ]
// 1. SceneDelegate.swift 삭제
// 2. AppDelegate.swift 파일에서 UISceneSession Lifecycle 부분 삭제
// 3. AppDelegate.swift 파일에 var window: UIWindow? 프로퍼티 작성
// 4. Info.plist에서 Application Scene Manifest 키 삭제

import UIKit

@UIApplicationMain // main()과 같은 역할을 함
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("didFinishLaunchingWithOptions")
        print("어플리케이션이 최초 실행될때 호출됩니다.")
        return true
    }
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        print("applicationDidFinishLaunching")
        print("어플리케이션이 실행된 직후 사용자의 화면에 보여지기 직전에 호출")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
        print("어플리케이션이 Active 상태로 전환된 직후 호출")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
        print("어플리케이션이 Inaction 상태로 전환되기 직전 호출")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
        print("어플리케이션이 백그라운드 상태로 전환된 직후 호출")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
        print("어플리케이션이 Active 상태가 되기 직전에, 화면에 보여지기 직전의 시점에 호출")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
        print("어플리케이션이 종료되기 직전에 호출")
    }
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

