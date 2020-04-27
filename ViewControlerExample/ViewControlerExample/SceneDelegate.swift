//
//  SceneDelegate.swift
//  ViewControlerExample
//
//  Created by 요한 on 2020/04/27.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

// iOS 13이상일때 SeenDelegate를 사용

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        // 스토리보드를 사용할때는 사용안함.
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = ViewController()
        window?.frame = UIScreen.main.bounds
        // 다크모드가 생긴 뒤로 배경색을 흰색으로 지정하는것이 아닌 .systemBackground로 지정한다. iOS 13이상부터 가능
        window?.backgroundColor = .systemBackground
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }

}

