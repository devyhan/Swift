import UIKit

class ViewController: UIViewController {
    var isZoom = false // 확대 여부를 나타내는 변수 default : false
    var imgOn: UIImage? // 켜진 전구 이미지가 있는 UIImage 타입의 변수
    var imgOff: UIImage? // 꺼진 전구 이미지가 있는 UIImage 타이븨 변수
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgOn = UIImage(named: "lamp_on.png") // imgOn에 "lamp_on.png"이미지 할당
        imgOff = UIImage(named: "lamp_off.png") // imgOn에 "lamp_of.png"이미지 할당
        
        imgView.image = imgOn
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        var newPointX:CGFloat, newPointY:CGFloat
        
        if (isZoom) {
            // true
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            // 이미지 프레임의 가로, 세로 크기에 scale 값을 나누어 newWidth와 newHeight에 할당합니다.
            newPointX = 113
            newPointY = 86
            // 좌표 변수 X, Y에 값을 할당
            btnResize.setTitle("확대", for: .normal)
            // 버튼의 텍스트를 "확대" 로 변경합니다
        } else {
            // false
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            // 이미지 프레임의 가로, 세로 크기에 scale 값을 곱하여 newWidth와 newHeight에 할당합니다.
            newPointX = 20
            newPointY = 20
            // 좌표 변수 X, Y에 값을 할당
            btnResize.setTitle("축소", for: .normal)
            // 버튼의 텍스트를 "축소" 로 변경합니다
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        // CGSize 메서드를 사용하여 이미지 뷰의 프레임 크기를 변경합니다.
        imgView.frame.origin = CGPoint(x: newPointX, y: newPointY)
        isZoom = !isZoom
    
    }
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
        // 토글 스위치의 값이 true거나 false일때 이미지 뷰에 나타날 이미지를 선택
    }
    
}

