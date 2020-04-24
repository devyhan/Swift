//
//  ViewController.swift
//  ChangeTextButton
//
//  Created by 요한 on 2020/04/23.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    // UILable 1
    // UIButton 1
    // count = 1
    
    var count = 0
    @IBOutlet weak var lable: UILabel?

        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UILable
        let lable = UILabel()
        lable.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        lable.text = ""
        lable.textAlignment = .center
        lable.font = UIFont.preferredFont(forTextStyle: .largeTitle, compatibleWith: .none)
        lable.textColor = .black
        
        
        // UIButton
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        button.setTitle("Count Up", for: .normal)
        button.addTarget(self, action: #selector(bottonDidTap(_:)), for: .touchUpInside)

        view.addSubview(lable)
        view.addSubview(button)
        
    }
    

    @objc
    func bottonDidTap(_ sender: Any) {
    
        count += 1
        
        
    }

}

