//
//  ViewController.swift
//  Lable
//
//  Created by 요한 on 2020/04/23.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lable = UILabel()
        lable.frame = CGRect.init(x: 100, y: 100, width: 200, height: 50)
        lable.text = "LABLE"
        lable.textColor = .red
        lable.textAlignment = .center
        lable.font = UIFont.preferredFont(forTextStyle: .largeTitle)
//        lable.font = UIFont.systemfont(ofSize: 30)
        
        view.addSubview(lable)
    }
}

