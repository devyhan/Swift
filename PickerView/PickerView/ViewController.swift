import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource { // UIPickerViewDelegate클래스와 UIPickerViewDataSource클래스 상속 추가
    let MAX_ARRAY_NUM = 10 // 이미지의 파일명을 저장할 배열의 최대 크기를 저장
    let PICKER_VIEW_COLUMN = 1 // 피커 뷰의 열의 개수를 지정
    var imageArray = [UIImage?]()
    var imageFileName = [ "극한직업.jpg", "기생충.jpeg", "나랏말싸미.jpeg", "남산의부장들.jpeg", "돈.jpeg", "말모이.jpeg", "범죄도시.jpeg", "뺑반.jpeg", "악인전.jpeg", "엑시트.jpeg", ] // 이미지의 파일명을 저장할 배열
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< MAX_ARRAY_NUM { // i라는 변수를 0부터 MAX_ARRAY_NUM보다 작을 때까지 루프를 실행
            let image = UIImage(named: imageFileName[i]) // image라는 변수를 선언 imageFileName[i]에 있는 파일명을 사용하여 UIImage타입의 이미지를 생성후 image변수에 할당
            imageArray.append(image) // imageArray배열에 방금 만든 image를 추가
        }
        
        lblImageFileName.text = imageFileName[0] // lblImageFileName레이블에 imageFileName배열의 첫 번째 파일명을 출력
        imageView.image = imageArray[0] // 이미지 뷰에 첫 번째 이미지가 나타남
    }

    // 피커 뷰에게 컴포넌트의 수를 정수로 넘겨주는 델리게이트 메서드 피커 뷰의 컴포넌트는 피커 뷰에 표시되는 열의 개수를 의미
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    // numberOfRowsInComponent인수를 가지는 델리게이트 메서드 피커 뷰에게 컴포넌트의 열의 개수를 저수 값으로 넘겨줌
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    // titleForRow인수를 가지는 델리게이트 메서드 피커 뷰에게 컴포넌트의 각 열의 타이틀을 문자열 값으로 넘겨줌
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        return imageFileName[row]
    }
    
    // 사용자가 피커 뷰의 룰렛에서 선택한 row값을 사용하여 imageFileName배열에서 row값에 해당하는 문자열을 가지고 아웃렛 변수인 lblImageFileName.text에 저장
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row] // 사용자가 피커 뷰의 룰렛에서 선택한 row 값을 사용해 imageArray배열에서 row 값에 해당하는 이미지를 가져옴
    }
}

