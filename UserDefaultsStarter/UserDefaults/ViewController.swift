//
//  ViewController.swift
//  UserDefaults
//
//  Created by giftbot on 2020. 05. 06..
//  Copyright © 2020년 giftbot. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

  @IBOutlet private weak var datePicker: UIDatePicker!
  @IBOutlet private weak var alertSwitch: UISwitch!

    let singletonUserDefaults = UserDefaults.standard
    
    
    
  // MARK: Action Handler
  
  @IBAction func saveData(_ button: UIButton) {
    
    // UserDefault를 이용해서 switch의 값 저장
    // datePicker의 값 저장
//    TestSwitch.isOn =  UserDefaults.standard.bool(forKey: "switchState")

// let userDefaults = UserDefaults.standard
    
    singletonUserDefaults.set(datePicker.date, forKey: "Date")
//    UserDefaults.standard.set(singletonUserDefaults, forKey: "Date")
//    print(userDefaults.dictionaryRepresentation())
    
    
  }
  
  @IBAction func loadData(_ button: UIButton) {
    // UserDefault를 이용해서 Alarm의 Switch값 로드, DatePicker의 값 로드
    // Switch와 DatePicker에 불러온 값 세팅
    
    datePicker.setDate(singletonUserDefaults.object(forKey: "Date") as! Date, animated: true)
  }
}

