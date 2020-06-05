//
//  ViewController.swift
//  LoginPageExample
//
//  Created by 요한 on 2020/05/14.
//  Copyright © 2020 요한. All rights reserved.
//

//someview.alpha = 0
//someview.hidden = true

import UIKit

// MARK: Struct

struct UI {
    static let logoImageFile: String = "fastcampus_logo"
    static let emailInputIcon: String = "email"
    static let idInputIcon: String = "user"
    static let passwordInputIcon: String = "password"
    static let baseColor: UIColor = .red
    static let contentsRadius: CGFloat = 6
    static let textFieldLength: Int = 3
}

struct UserInfo {
    static let loginID: String = "loginID"
    
    static let userID: String = "admin"
    static let userPW: String = "1234"
    
    static let userKey: String = "Status"
    
}

// MARK: Protocol

protocol CustomTextFieldDelegate: class {
    func checkForText(_ newText: UIColor?) -> UIColor
}

class ViewController: UIViewController {
    
    var loginStatus: Bool = false
    //    var userString: String = "None"
    
    let idFiled = UITextField()
    let pwFiled = UITextField()
    
    let limitLength = UI.textFieldLength
    
    let idAlert = UILabel()
    let pwAlert = UILabel()
    
    //    textField.delegate = self
    
    // MARK: View Life Cycle
    let userInput = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkStatus()
        // LogoImage
        logoImageView()
        // Logo under square
        squareViewWrapp(positionY: 200)
        // User Input
        userInputField()
        setKeyboardEvent()
        
    }
    
    // MARK: Setup Views
    
    // Fix: func foundationImage 추가하여 이미지 초기 설정 추가
    
    func foundationView(for uiView: UIView, frame: CGRect, bgColor: UIColor) {
        uiView.frame = frame
        uiView.backgroundColor = bgColor
        uiView.layer.cornerRadius = UI.contentsRadius
        
        view.addSubview(uiView)
    }
    
    func foundationLabel(for uiLabel: UILabel, text: String, frame: CGRect, hidden: Bool) {
        uiLabel.frame = frame
        uiLabel.text = text
        uiLabel.isHidden = hidden
        uiLabel.textColor = UI.baseColor
        
        view.addSubview(uiLabel)
    }
    
    func foundationTextField(for uiTextFiled: UITextField, frame: CGRect, placeholderText: String, secure: Bool) {
        uiTextFiled.frame = frame
        uiTextFiled.isSecureTextEntry = secure
        uiTextFiled.layer.addBorder([.bottom], color: .gray, width: 1.0)
        uiTextFiled.placeholder = placeholderText
        uiTextFiled.autocapitalizationType = .none // 텍스트 필드의 첫번째 글자를 대문자로 하지않음(영문으로 작성시)
        
        view.addSubview(uiTextFiled)
    }
    
    func foundationView(for fdView: UIView, frame: CGRect, backgroundColor: UIColor) {
        fdView.backgroundColor = backgroundColor
        fdView.frame = frame
        
        view.addSubview(fdView)
    }
    
    
    
    
    
    func logoImageView() {
        let imgView = UIImageView()
        let logoImg = UIImage(named: UI.logoImageFile)!
        
        imgView.frame = CGRect(x: 60, y: 100, width: view.frame.width - 120 , height: 70)
        imgView.image = logoImg
        
        view.addSubview(imgView)
    }
    
    // Fix: 반복문으로 SquareViews 수정
    func squareViewWrapp(positionY: CGFloat) {
        let firstView = UIView()
        let secondView = UIView()
        let thirdView = UIView()
        
        let frameX = view.center.x
        
        foundationView(for: firstView, frame: CGRect(x: frameX - 55, y: positionY, width: 30, height: 30), bgColor: UI.baseColor)
        foundationView(for: secondView, frame: CGRect(x: frameX - 15, y: positionY, width: 30, height: 30), bgColor: UI.baseColor)
        foundationView(for: thirdView, frame: CGRect(x: frameX + 25, y: positionY, width: 30, height: 30), bgColor: UI.baseColor)
    }
    
    // Fix: UI.userloginmethod = true 일 경우 email , false 일경우 id 조건 추가
    func userInputField() {
        
        let SinginButton = UIButton()
        
        
        let idView = UIImageView()
        let pwView = UIImageView()
        
        let emailIcon = UIImage(named: UI.emailInputIcon)
        let idIcon = UIImage(named: UI.idInputIcon)
        let pwIcon = UIImage(named: UI.passwordInputIcon)
        let width = view.frame.width
        
        // Icon
        idView.frame = CGRect(x: 40, y: 525, width: 20, height: 20)
        idView.image = idIcon
        
        pwView.frame = CGRect(x: 40, y: 625, width: 20, height: 20)
        pwView.image = pwIcon
        
        // TextField
        foundationLabel(for: idAlert, text: "아이디를 확인하세요", frame: CGRect(x: 90, y: 475, width: 200, height: 50), hidden: true)
        foundationTextField(for: idFiled, frame: CGRect(x: 90, y: 500, width: width - 140, height: 50), placeholderText: "아이디를 입력하세요", secure: false)
        foundationLabel(for: pwAlert, text: "패스워드를 확인하세요", frame: CGRect(x: 90, y: 575, width: 200, height: 50), hidden: true)
        foundationTextField(for: pwFiled, frame: CGRect(x: 90, y: 600, width: width - 140, height: 50), placeholderText: "비밀번호를 입력하세요", secure: true)
        
        SinginButton.frame = CGRect(x: 30, y: 700, width: width - 60, height: 50)
        SinginButton.backgroundColor = .black
        SinginButton.layer.cornerRadius = UI.contentsRadius
        SinginButton.setTitle("Sing in", for: .normal)
        SinginButton.setTitleColor(.white, for: .normal)
        SinginButton.addTarget(self, action: #selector(singInButtom(_:)), for: .touchUpInside)
        
        view.addSubview(idView)
        view.addSubview(pwView)
        view.addSubview(SinginButton)
    }
     
    
    func userIdAlert() {
        let usertIdAertView = UIView()
        
        foundationView(for: usertIdAertView, frame: CGRect(x: 90, y: 450, width: 100, height: 50), bgColor: .white)
    }
    
    
    // View 클릭시 키보드 가림
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    // keyboard cheack
    func setKeyboardEvent() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisappear(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func checkStatus() {
        // User Default
//        let temp = UserDefaults.standard.bool(forKey: UserInfo.userKey)
//        print("UserDefaults Value : ", temp)
//        if temp == true {
//            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
//                let sceneDelegate = windowScene.delegate as? SceneDelegate
//                sceneDelegate?.window?.rootViewController = SecondViewController()
//            }
//        }
    }
    
    
    // MARK: - Action
    
    @objc func singInButtom(_ sender: Any) {
        //        print("Sing in")
        
        guard case UserInfo.userID = idFiled.text, UserInfo.userID.isEmpty == false else {
            self.idAlert.isHidden = false
            
            //            UIView.animate(withDuration: 0.3) {
            //                // 애니메이션 코드
            //                self.idFiled.backgroundColor = UI.baseColor
            //                self.idFiled.alpha = 1
            //                self.idFiled.backgroundColor = .white
            //
            //                self.pwFiled.backgroundColor = UI.baseColor
            //                self.idFiled.alpha = 1
            //                self.pwFiled.backgroundColor = .white
            //            }
            
            return
        }
        self.idAlert.isHidden = true
        
        guard case UserInfo.userPW = pwFiled.text, UserInfo.userPW.isEmpty == false else {
            self.pwAlert.isHidden = false
            //            UIView.animate(withDuration: 0.3) {
            //               // 애니메이션 코드
            //                self.pwFiled.backgroundColor = UI.baseColor
            //                self.pwFiled.backgroundColor = .white
            //
            //                self.idFiled.backgroundColor = UI.baseColor
            //                self.idFiled.backgroundColor = .white
            //            }
            
            return
        }
        self.pwAlert.isHidden = true
        
        loginStatus = true
        UserDefaults.standard.set(loginStatus, forKey: UserInfo.userKey)
        //        UserDefaults.standard.set(userString, forKey: UserInfo.userKey)
        
        let vc = SecondViewController()
        vc.modalPresentationStyle = .overFullScreen
        vc.idLabel.text = idFiled.text
        present(vc, animated: true)
        
    }
    
    @objc func keyboardWillAppear(_ sender: NotificationCenter) {
        print("show")
        self.view.frame.origin.y = -250
    }
    
    @objc func keyboardWillDisappear(_ sender: NotificationCenter) {
        print("hide")
        self.view.frame.origin.y = 0
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // 화면을 전활할때, 해야할일
    //        super.prepare(for: segue, sender: sender)
    //        guard let secondViewcontroller = segue.description as? SecondViewController else { return }
    //        secondViewcontroller.idLabel.text = self.idFiled.text
    //    }
    
}

// MARK: - Extension

//let idFiled = UITextField()
//let pwFiled = UITextField()

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print(textField.text!,range.location, range.length)
        
        return true
        
    }
    
}



// MARK: - CALayer addBorder
//UIRectEdge.all - 전체
//UIRectEdge.top - 상단
//UIRectEdge.bottom - 하단
//UIRectEdge.left - 왼쪽
//UIRectEdge.right - 오른쪽

extension CALayer {
    func addBorder(_ arr_edge: [UIRectEdge], color: UIColor, width: CGFloat) {
        for edge in arr_edge {
            let border = CALayer()
            switch edge {
            case UIRectEdge.top:
                border.frame = CGRect.init(x: 0, y: 0, width: frame.width, height: width)
                break
            case UIRectEdge.bottom:
                border.frame = CGRect.init(x: 0, y: frame.height - width, width: frame.width, height: width)
                break
            case UIRectEdge.left:
                border.frame = CGRect.init(x: 0, y: 0, width: width, height: frame.height)
                break
            case UIRectEdge.right:
                border.frame = CGRect.init(x: frame.width - width, y: 0, width: width, height: frame.height)
                break
            default:
                break
            }
            border.backgroundColor = color.cgColor;
            self.addSublayer(border)
        }
    }
}


//        imgView.backgroundColor = .red

//        someView.frame = CGRect(x: 40, y: 100, width: 400, height: 300)
//        someView.backgroundColor = .red

//        UIView.animate(withDuration: 1) {
//            self.someView.frame.width *= 1.2
//            self.someView.frame.height *= 1.2
//        }

