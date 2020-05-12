//
//  ViewController.swift
//  StoryboardExample
//
//  Created by 요한 on 2020/05/07.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) { }
    
    // 카운드 40이 넘어가면 더이상 화면이 전환되지 않도록 만들기
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool { // 세그웨이를 실행할지말지
        super.shouldPerformSegue(withIdentifier: identifier, sender: sender) // true
//        if count > 40 {
//            return false
//        }
//        return true
        
        return count >= 40 ? false : true
        
//        return identifier == "PlusOne" ? true : false
        
//        return false
    }

    
    
    
    // prepare - A Viewcontroller 에서 넘어가기전 사전 작업 메서드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let secondVC = segue.destination as? SecondViewController,
            let identifier = segue.identifier
            else { return } // 부모뷰의 뷰컨트롤러에서 타입캐스팅
//        secondVC.text = segue.identifier ?? ""
//        secondVC.text = (sender as? UIButton)?.currentTitle ?? ""

        count += (identifier == "PlusOne") ? 1 : 10
        secondVC.count = count
        
//        print(secondVC.text)
        print(sender)
        print(segue.source)         // 출발지
        print(segue.destination)    // 목적지
        print(segue.identifier)     // 식별자
    }
    
//    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboard) {
//        guard let secondVC = unwindSegue.source as? SecondViewController else {return}
//
//    }
    
}

