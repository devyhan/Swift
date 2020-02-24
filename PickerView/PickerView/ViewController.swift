import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource { // UIPickerViewDelegate클래스와 UIPickerViewDataSource클래스 상속 추가
    let MAX_ARRAY_NUM = 10 // 이미지의 파일명을 저장할 배열의 최대 크기를 저장
    let PICKER_VIEW_COLUMN = 1 // 피커 뷰의 열의 개수를 지정
    var imageFileName = [ "극한직업.jpg", "기생충.jpeg", "나랏말싸미.jpeg", "남산의부장들.jpeg", "돈.jpeg", "말모이.jpeg", "범죄도시.jpeg", "뺑반.jpeg", "악인전.jpeg", "액시트.jpeg", ] // 이미지의 파일명을 저장할 배열
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        return imageFileName[row]
    }
}

