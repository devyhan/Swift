//
//  FourthViewController.swift
//  TabbarController
//
//  Created by 요한 on 2020/05/08.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "ForthViewController"
        navigationItem.title
        
        view.backgroundColor = .black
    }
    
    
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            navigationController?.popViewController(animated: true)
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
