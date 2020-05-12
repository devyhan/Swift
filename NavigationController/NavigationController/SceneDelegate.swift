//
//  SceneDelegate.swift
//  NavigationController
//
//  Created by 요한 on 2020/05/08.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        guard let WindowSceen = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: WindowSceen)
        
        let vc = ViewController()
        let navigationController = UINavigationController(rootViewController: vc)
        
        window.rootViewController = navigationController
        window.backgroundColor = .systemBackground
        window.makeKeyAndVisible()
        self.window = window
        
        navigationController.navigationBar.prefersLargeTitles = true
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

