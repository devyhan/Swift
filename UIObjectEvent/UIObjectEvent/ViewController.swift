//
//  ViewController.swift
//  UIObjectEvent
//
//  Created by 요한 on 2020/04/27.
//  Copyright © 2020 요한. All rights reserved.
//
/*
1. UISwitch, UISegmentedControl 을 이용한 문제

- UISwitch : On, Off 가 바뀔 때마다 Label 의 내용이 On, Off 로 표시되도록 구현
- UISegmentedControl : 선택 내용이 바뀔 때마다 Label 의 내용도 해당 타이틀 값으로 함께 변경되도록 구현

 위 2개는 버튼과 달리 event 처리를 touchUpInside 가 아니라 valueChanged 라는 것을 활용해야 함
*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitle()
        setupSwitch()
        setupSegmentControl()
    }

    func setupCommonAttributes(
        for label: UILabel,
        title: String,
        frame: CGRect,
        backgroundColor: UIColor,
        textColor: UIColor
    ) {
        label.text = title
        label.frame = frame
        label.textColor = textColor
        label.textAlignment = .center
        label.backgroundColor = backgroundColor
        
        view.addSubview(label)
    }
    
    
    let titleLable = UILabel()
    
    func setupTitle() {
        let frame = CGRect(x: 40, y: 40, width: 300, height: 30)
        setupCommonAttributes(
            for: titleLable,
            title: "UIObjectEvent",
            frame: frame,
            backgroundColor: .white,
            textColor: .black
        )
    }
    
    let switchLable = UILabel()

    func setupSwitch() {
        let onOffSwitch = UISwitch()
        onOffSwitch.frame.origin = CGPoint(x: 165, y: 180)
        onOffSwitch.addTarget(self, action: #selector(toggleOnOffText(_:)), for: .valueChanged)
        view.addSubview(onOffSwitch)
        
        let frame = CGRect(x: 140, y: 140, width: 100, height: 30)
        setupCommonAttributes(
            for: switchLable,
            title: "off",
            frame: frame,
            backgroundColor: .black,
            textColor: .white
        )
    }
    
    @objc func toggleOnOffText(_ sender: UISwitch) {
        switchLable.text = sender.isOn ? "on" : "off"
    }
    
    
    let selectSegmentLable = UILabel()
    
    func setupSegmentControl() {
        let segmentControl = UISegmentedControl(items: ["강아지", "고양이", "물고기"])
        segmentControl.frame.origin = CGPoint(x: 115, y: 280)
        segmentControl.addTarget(self, action: #selector(showSelectTitle(_:)), for: .valueChanged)
        view.addSubview(segmentControl)
        
        let frame = CGRect(x: 140, y: 240, width: 100, height: 30)
        setupCommonAttributes(
            for: selectSegmentLable,
            title: "강아지",
            frame: frame,
            backgroundColor: .black,
            textColor: .white
        )
    }
    
    @objc func showSelectTitle(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        let title = sender.titleForSegment(at: index)
        selectSegmentLable.text = title
    }
}

