//
//  SecondViewController.swift
//  LoginPageExample
//
//  Created by 요한 on 2020/05/14.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

// MARK: - Protocol
protocol SecondToFirstDelegate: class {
    func sendText() -> String
}

class SecondViewController: UIViewController {
    
    let idLabel = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userInfoLabel()
        logoutButton()
        view.backgroundColor = .white
    }
    
    func userInfoLabel() {
        idLabel.frame = CGRect(x: 40, y: view.center.y - 400, width: view.frame.width - 80, height: 500)
        idLabel.textAlignment = .center
        
        view.addSubview(idLabel)
    }
    
    func logoutButton() {
        button.frame = CGRect(x: 40, y: view.center.y + 150, width: view.frame.width - 80, height: 50)
        button.backgroundColor = UI.baseColor
        button.layer.cornerRadius = UI.contentsRadius
        button.setTitle("Log out", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(logoutButton(_:)), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc func logoutButton(_ sender: Any) {
        print(presentingViewController)

//        if let _ = self.presentingViewController as? ViewController {
//            self.dismiss(animated: true, completion: nil)
//        } else {
//            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
//                let window = UIWindow(windowScene: windowScene)
//                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//                let rootViewController = mainStoryboard.instantiateInitialViewController() as! ViewController
//                rootViewController.view.backgroundColor = .systemBackground
//                window.rootViewController = rootViewController
//
//                let sceneDelegate = windowScene.delegate as? SceneDelegate
//                sceneDelegate?.window = window
//                window.makeKeyAndVisible()
//            }
//        }
        
        let temp = UserDefaults.standard.bool(forKey: UserInfo.userKey)
        
        print(temp)
        if temp == true {
            
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                    let sceneDelegate = windowScene.delegate as? SceneDelegate
                    sceneDelegate?.window?.rootViewController = ViewController()
                }

            
            } else {
            dismiss(animated: true, completion: nil)
        }
        dismiss(animated: true, completion: nil)
    }
}



//extension SecondViewController:  {
//
//}
