//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by 요한 on 2020/05/15.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

// view.safeAreaInsets

struct safeArea {
    static let margin: CGFloat = 20
    static let padding: CGFloat = 10
}

class ViewController: UIViewController {

    let leftView = UIView()
    let rightView = UIView()
    let width = 140
    
    override func viewDidLoad() {
        super.viewDidLoad()
                                // 896 ,
        print(view.frame.width) // 414 , 182 , 778
        // 182 + 20
        
        leftView.backgroundColor = .red
        rightView.backgroundColor = .blue
          
//        view.addSubview(leftView)
//        view.addSubview(rightView)
        print("1", view.safeAreaInsets) // viewDidLoad 에서는 safeArea값이 나오지 않는다
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2", view.safeAreaInsets )
    }
    
    override func viewSafeAreaInsetsDidChange() { // 인셋이 바뀌는 위치 (시점을 알려줌)
        super.viewSafeAreaInsetsDidChange()
        print("3", view.safeAreaInsets)
        
    }
    
    override func viewWillLayoutSubviews() { // 레이아웃을 지정하는 용도 // 뷰의 크기가 바뀌었을경우 크기를 변경하는 메서드
        super.viewWillLayoutSubviews()
        
        let safeLayoutInsets = view.safeAreaInsets
        let horizeontalInset = safeLayoutInsets.left + safeLayoutInsets.right
        let yOffset = safeLayoutInsets.top + safeArea.margin
        let viewWidth = (view.frame.width - safeArea.padding - horizeontalInset) / 2 - safeArea.margin
        
        leftView.frame = CGRect(
            x: safeLayoutInsets.left + safeArea.margin,
            y: yOffset,
            width: viewWidth, height: view.bounds.height - yOffset - (safeLayoutInsets.bottom + safeArea.margin)
        )
        
        rightView.frame = CGRect(
            origin: CGPoint(
                x: leftView.frame.maxX + safeArea.padding,
                y: yOffset
            ),
            size: leftView.bounds.size
        )
        
        print("4", view.safeAreaInsets)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("5", view.safeAreaInsets)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("6", view.safeAreaInsets)
    }
    
    // iPhone 8 20, 0, 0, 0
    // iPhone X 44, 0, 34, 0

}

