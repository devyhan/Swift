//
//  NextViewController.swift
//  ViewControlerExample
//
//  Created by 요한 on 2020/04/27.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let button = UIButton(type: .system)
        button.setTitle("Button Next", for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        button.sizeToFit() // 버튼 폰트의 사이즈를 잡아주는 역할
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(button)
        
        let dismissButton = UIButton(type: .system)
        dismissButton.setTitle("Button Back", for: .normal)
        dismissButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        dismissButton.sizeToFit() // 버튼 폰트의 사이즈를 잡아주는 역할
        dismissButton.frame = CGRect(x: 90, y: 500, width: 200, height: 50)
        dismissButton.addTarget(self, action: #selector(didTapButtonBack), for: .touchUpInside)
        view.addSubview(dismissButton)
    }

//    override func viewWillAppear( _ animated: Bool) {
//      super.viewWillAppear(animated)
//      print("\n---------- [ NextViewWillAppear - next vc -1] ----------\n")
//    }
//
//    override func viewDidAppear( _ animated: Bool) {
//      super.viewDidAppear(animated)
//      print("\n---------- [ NextViewDidAppear - next vc -2] ----------\n")
//    }
//
//    override func viewWillDisappear( _ animated: Bool) {
//      super.viewWillDisappear(animated)
//      print("\n---------- [ NextViewWillDisappear - next vc -3] ----------\n")
//    }
//
//    override func viewDidDisappear( _ animated: Bool) {
//      super.viewDidDisappear(animated)
//      print("\n---------- [ NextViewDidDisappear - next vc -4] ----------\n")
//    }

    deinit {
        print("메모리에서 사라짐 - NextViewControler")
    }
    
    
    @objc private func didTapButtonBack(_ sender: UIButton) {
        dismiss(animated: false)
    }
    

    @objc private func didTapButton(_ sender: UIButton) {
        /***************************************************
        presentingViewController - 나를 띄운 ViewController
        presentedViewController - 내가 띄운 ViewController
        ***************************************************/
        
        // self  // nextVC
        // self.presentingViewController   // ViewController
        // self.presentingViewContgroller.presentedViewController   // NextVC
        
    //    let colors: [UIColor] = [.red, .blue, .green, .gray, .black, .purple, .cyan, .magenta]
    //    presentingViewController?.view.backgroundColor = colors.randomElement()!
        
    //    presentingViewController // UIViewController  -> button (X)
        
//        if let VC = presentingViewController?.presentingViewController as? ViewController {
//          VC.button.setTitle("클릭", for: .normal)
//        }
    let VC = AnotherViewController()
    
    
    present(VC, animated: false)

        
//    presentingViewController?.dismiss(animated: true)
//        dismiss(animated: true)
//
//        if #available(iOS 13.0, *) {
//    //      true, false    true false  false true
//        } else {
//          // Fallback on earlier versions
//        }
        
        
        
        // A -> B -> C
        // C dimiss -> B
//         presentingViewController?.dismiss = dismiss
//         presentingViewController?.presentingViewController?.dismiss(animated: true)
        
    //    let vc = ViewController()   // 0x12, 0x34
    //    vc.modalPresentationStyle = .fullScreen
    //    present(vc, animated: true)
    }
}


