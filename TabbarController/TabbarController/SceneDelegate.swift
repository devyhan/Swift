//
//  SceneDelegate.swift
//  TabbarController
//
//  Created by 요한 on 2020/05/08.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let _ = (scene as? UIWindowScene) else { return }
        
        let vc = ViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()
        let navigationController = UINavigationController(rootViewController: thirdVC)
        
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [vc, secondVC, navigationController]
        
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        secondVC.tabBarItem = UITabBarItem(
            title: "Second", image: UIImage(systemName: "person.circle"), tag: 1
        )
        
        navigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
//        thirdVC.navigationItem = UINavigationItem(title: "ThirdVC")
        
        navigationController.navigationBar.prefersLargeTitles = true
        
        window?.rootViewController = tabBarController
        window?.backgroundColor = .systemBackground
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

