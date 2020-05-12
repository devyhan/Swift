//
//  SecondViewController.swift
//  StoryboardExample
//
//  Created by 요한 on 2020/05/07.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var count = 0
    
    @IBOutlet private weak var textLabel: UILabel!
    
    var minus = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "\(count)"
    }
    @IBAction func unwindToSecondViewController(_ unwindSegue: UIStoryboardSegue) {
//        guard let secondVC = unwindSegue.source as? SecondViewController else { return }
        
    }
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
//        guard let firstVC = sender.destination as? ViewController else { return }
        
        guard let number = Int(sender.text ?? "0") else {return}
        
        minus = number
        
    }
}
