//
//  ViewController.swift
//  ToggleUserDefaults
//
//  Created by 요한 on 2020/05/08.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    
    private struct Key {
        static let switchkey = "key"
    }

    var dogOn: UIImage?
    var catOff: UIImage?
    
    @IBOutlet weak var ToggleSwitch: UISwitch!
    @IBOutlet weak var imgLagel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dogOn = UIImage(named: "dog.jpg")
        catOff = UIImage(named: "cat.jpg")
        
        imgView.image = dogOn
    }

    @IBAction func toggleImage(_ sender: Any) {
        if (sender as AnyObject).isOn {
            imgView.image = dogOn
        
        } else {
            imgView.image = catOff
        }
        
        userDefaults.bool(forKey: Key.switchkey)
//        TestSwitch.isOn =  UserDefaults.standard.bool(forKey: "switchState")
        
        
    }
    
}

