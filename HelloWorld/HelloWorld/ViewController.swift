//
//  ViewController.swift
//  HelloWorld
//
//  Created by 요한 on 2020/04/23.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var topView: UIView! // 저장프로퍼티이기 때문에 초기값이 필요함. 스토리보드에서 있는것이라 느낌표(!)를 붙여준다.
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        topView.backgroundColor = .black // 코드만 없애는것이아닌 스토리보드와의 연결을 끊어주어야 한다.
        middleView.backgroundColor = .yellow
        bottomView.alpha = 0.6
        
        let codeView1 = UIView()
        codeView1.frame = CGRect(x: 100, y: 20, width: 300, height: 300)
        codeView1.center = view.center // codeView를 가운데로 고정함, x y 좌표로 움직이기 위해서는 주석을 해야함
        codeView1.backgroundColor = .purple
        
        // 뒤에 올린 뷰가 위에 올라감
        let codeView2 = UIView()
        codeView2.frame = CGRect(x: 100, y: 20, width: 200, height: 200)
        codeView2.center = view.center // codeView를 가운데로 고정함, x y 좌표로 움직이기 위해서는 주석을 해야함
        codeView2.backgroundColor = .purple
        
        let codeView3 = UIView()
        codeView3.frame = CGRect(x: 100, y: 20, width: 100, height: 100)
        codeView3.center = view.center // codeView를 가운데로 고정함, x y 좌표로 움직이기 위해서는 주석을 해야함
        codeView3.backgroundColor = .purple
        
        view.addSubview(codeView1)
        view.addSubview(codeView2)
        view.addSubview(codeView3)
    }
}

