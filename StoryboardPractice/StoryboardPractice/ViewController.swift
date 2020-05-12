//
//  ViewController.swift
//  StoryboardPractice
//
//  Created by 요한 on 2020/05/07.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var dog: UIImage?
//    var cat: UIImage?
//    var bird: UIImage?

    var count1 = 0 {
        didSet {
            textLabel.text = String(count1)
        }
    }
    var count2 = 0 {
        didSet {
            textLabel.text = String(count2)
        }
    }
    var count3 = 0 {
        didSet {
            textLabel.text = String(count3)
        }
    }
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        textLabel.text = "0"
        
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let secondVC = segue.destination as? SecondViewController
            else { return }
//        print(secondVC)
//        print(segue.destination)
//        print(segue.identifier)
        
        
        switch segue.identifier {
        case "Dog":
            secondVC.image = UIImage(named: "Dog.jpeg")!
            count1 += 1
        case "Cat":
            secondVC.image = UIImage(named: "Cat.jpeg")!
            count2 += 1
        case "Bird":
            secondVC.image = UIImage(named: "Bird.jpeg")!
            count3 += 1
        default:
            print("")
//            secondVC.image = UIImage(named: "Dog.jpeg")!
        }
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
      super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
        
    }
    
    // MARK: Unwind

    @IBAction func unwindToViewController(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        // 123
    }

}

