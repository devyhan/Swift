////
////  ViewController.swift
////  UITextFieldExample
////
////  Created by 요한 on 2020/04/28.
////  Copyright © 2020 요한. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet private weak var nicknameTextFiled: UITextField!
//
//    private let idTextFiled = UITextField()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        idTextFiled.placeholder = "ID를 입력하세요"
//        idTextFiled.font = .preferredFont(forTextStyle: .title1)
//        idTextFiled.textAlignment = .center
//        idTextFiled.borderStyle = .roundedRect
//
//
////        idTextFiled.isSecureTextEntry = true // 입력한값에서 이어서 작성하려고 하면 초기화되서 작성됨
//        idTextFiled.keyboardType = .URL
//
//        idTextFiled.frame = CGRect(x: 30, y: 500, width: 300, height: 40)
//        view.addSubview(idTextFiled)
//
//
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        // 화면이 뜰때 항상 동작
//        nicknameTextFiled.becomeFirstResponder()
////        nicknameTextFiled.resignFirstResponder()
//    }
//
//
//    @IBAction func textFieldEditingDidBegin( sender: UITextField) {
//        print("1.textFieldEditingDidBegin")
//        view.endEditing(true)
//    }
//    @IBAction func textFieldEditingDidChanged( sender: UITextField) {
//        print("2.textFieldEditingDidChanged")
//    }
//    @IBAction func textFieldDidEndOnExit( sender: UITextField) {
//        print("3.textFieldDidEndOnExit")
//    }
//
//    @IBAction private func textfieldPrimaryActionTriggered( sender: UITextField) {
//        print("4.textfieldPrimaryActionTriggered")
//    }
//
//    @IBAction private func textFieldEditingDidEnd(_ sender: UITextField) {
//        print("5.textFieldEditingDidEnd")
//        print(sender.text)
//    }
//}
