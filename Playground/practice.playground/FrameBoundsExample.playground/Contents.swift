//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        view.frame.size = CGSize(width: 557, height: 667)
        
//        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colors: [UIColor] = [.blue, .red, .green]
        
//        let greenView = setupSuperview()
//        let blueView = setupFirstview()
//        let redView = setupSecondView()
//        let greenView = setupTherdView()
        
//        blueView.frame.origin = CGPoint(x: 15, y: 15)
//        redView.frame.origin = CGPoint(x: 30, y: 30)
//        greenView.frame.origin = CGPoint(x: 45, y: 45)
        
        
//        greenView.frame.origin = CGPoint(x: 0, y: 0)
//        greenView.bounds.origin = CGPoint(x: 80, y: 80)
    }
    
    
    func addSubviewOnRootView() {
        var frame = view.frame
        
        // 요구조건이 반복적인 일인가 생각해보기
        for color in colors {
            let colorView = createSubview(frame: frame, color: color)
            view.addSubview(colorView)
            frame = colorView.frame
            print(colorView.frame)
        }
        
    }
    
//    func setupFirstview() -> UIView {
//        let blueView = UIView()
//        let widthNum = view.frame.size.width - 30
//        let heightNum = view.frame.size.height - 30
//        blueView.frame = CGRect(x: 0, y: 0, width: widthNum, height: heightNum)
//        blueView.backgroundColor = .blue
//        view.addSubview(blueView)
//
//        return blueView
//    }
//
//    func setupSecondView() -> UIView {
//        let redView = UIView()
//        let widthNum = view.frame.size.width - 60
//        let heightNum = view.frame.size.height - 60
//        redView.frame = CGRect(x: 0, y: 0, width: widthNum, height: heightNum)
//        redView.backgroundColor = .red
//        view.addSubview(redView)
//
//        return redView
//    }
//
//    func setupTherdView() -> UIView {
//        let greenView = UIView()
//        let widthNum = view.frame.size.width - 90
//        let heightNum = view.frame.size.height - 90
//        greenView.frame = CGRect(x: 0, y: 0, width: widthNum, height: heightNum)
//        greenView.backgroundColor = .green
//        view.addSubview(greenView)
//
//        return greenView
//    }
}


let vc = MyViewController()
vc.preferredContentSize = CGSize(width: 557, height: 667)
PlaygroundPage.current.liveView = vc
