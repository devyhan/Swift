import UIKit

class ViewController: UIViewController {
    
    let imgOn = UIImage(named: "lamp-on.png")           // 켜진 전구 이미지를 가지고 있는 UIImage타입의 상수
    let imgOff = UIImage(named: "lamp-off.png")         // 꺼진 전구 이미지를 가지고 있는 UIImage타입의 상수
    let imgRemove = UIImage(named: "lamp-remove.png")   // 제거된 전구 이미지를 가지고 있는 UIImage타입의 상수
    
    var isLampOn = true // 전구가 켜졌는지의 여부를 나타내는 변수, 켜짐/꺼짐 true/false

    @IBOutlet var lampImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lampImg.image = imgOn // 앱을 처음 시작할 때 전구가 켜져 있는 이미지를 보여 주기 위해 ViewDidLoad함수 내의 lampImg객체에 imgOn을 대입
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        if (isLampOn==true) {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 켜진 상태 입니다.", preferredStyle: UIAlertController.Style.alert) // UIAlertController를 생성
            let onAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil) // UIAlertAction을 생성(특별한 동작을 하지않으면, handler를 nil로함)
            lampOnAlert.addAction(onAction) // 생성된 onAction을 얼럿에 추가
            present(lampOnAlert, animated: true, completion: nil) // present 메서드 실행
        } else {
            lampImg.image = imgOn
            isLampOn = true
        }
    }
    @IBAction func btnLampOff(_ sender: UIButton) {
        if (isLampOn==true) {
            let lampOffAlert = UIAlertController(
                title: "램프 끄기",
                message: "램프를 끄시겠습니까?",
                preferredStyle: UIAlertController.Style.alert
            ) // UIAlertController를 생성
            let offAction = UIAlertAction(
                title: "네",
                style: UIAlertAction.Style.default,
                handler: {
                    ACTION in self.lampImg.image = self.imgOff
                    self.isLampOn=false
            }) // UIAlertAction을 생성, 전구를 꺼야 하므로 핸들러에 중괄호 {,}를 넣어 추가적으로 작업을 진행, 반드시 self를 붙여야 에러가 발생하지 않는다.
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil) // UIAlertAction을 추가로 생성, 특별한 동작을 하지 않을 경우에는 핸들러를 nill로한다.
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            // 생성된 offAction, cancelAction을 얼럿에 추가
            
            present(lampOffAlert, animated: true, completion: nil) // persent메서드를 실행
        }
    }
    @IBAction func btnLampRemove(_ sender: UIButton) {
    }
    
}

