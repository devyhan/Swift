//
//  SecondViewController.swift
//  StoryboardPractice
//
//  Created by 요한 on 2020/05/07.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    var image: UIImage = UIImage()
//    var count01: Int = 0
//    var count02: Int = 0
//    var count03: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = image
    }
    
    
    @IBAction func addCount(_ sender: Any) {
        let VC = presentingViewController as? ViewController
        
//        VC?.count1 += 1
        
        
        if VC!.count1 < 8 {
            VC?.count1 += 1
        } else if VC!.count2 < 10 {
            VC?.count2 += 1
        } else {
            VC?.count3 += 1
        }
        
        
//        VC?.count2 += 1
//        VC?.count3 += 1
        
    }
    
}
