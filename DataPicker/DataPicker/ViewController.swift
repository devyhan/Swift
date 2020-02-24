import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime) // 타이머가 구동되면 실행할 함수를 지정
    let interval = 1.0 // 타이머 간격 1.0초
    var count = 0 // 타이머 실행 확인 변수
    
    @IBOutlet var lblCurrentTime: UILabel! // 현재시간: 레이블의 아웃렛 변수
    @IBOutlet var lblPickerTime: UILabel! // 선택시간: 레이블의 아웃렛 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        // timeInterval: 타이머 간격 | target: 동작될 view | selector: 타이머가 구동될 때 실행할 함수 | userInfo: 사용자 정보 | repeats: 반복 여부
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) { // 데이트 피커에 대한 액션 함수
        let datePickerView = sender // 데이트 피커를 선택할 때 발생하는 액션 함수인 "changeDatePicker"가 호출되면서 sender 자료형 인수 전달받음
        
        let formatter = DateFormatter() // 날짜를 출력하기 위해 DataFormatter라는 클래스 상수 formatter를 선언
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE" // dataFormat설정 "년-월-알 시:분:초 요일"
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        // 데이트 피커에서 선택한 날짜를 설정한 포멧대로 String메서드를 사용하여 문자열로 변환 lblPickerTime = "선택시간: " + "문자열로 변환한 선택한 날짜"
    }
    
    @objc func updateTime() { // 타이머 동작 함수
        // Swift4 에서는 #selector()의 인자로 사용될 메서드 를 선언할때 Objective-C와의 호환성을 위해 함수 앞에 반드시 @objc키워드를 붙여야함
        lblCurrentTime.text = String(count) // String으로 변환한 count값을 "lblCurrentTime" 레이블의 text속성에 저장
        count += 1 // count 1증가
    }
    
}

