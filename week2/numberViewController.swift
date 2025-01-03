//
//  numberViewController.swift
//  week2
//
//  Created by GO on 12/30/24.
//

import UIKit

class numberViewController: UIViewController {

    
    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewBackground()
        
        
        //반환값이 생기면서 반환값을 어디에 쓸지 정해야함.
        // Result of call to 'getToday()' is unused
        dataLabel.text = getToday()
        
//        print(NSHomeDirectory())
        
        //UserDefaults에 저장된 데이터 가져오기
        // 가져와서 보여줄 때는 ⭐️⭐️Type 명시해줘야함⭐️⭐️
        let result = UserDefaults.standard.string(forKey: "num")
        
        numberTextField.text = result!

    }
    // 반환값이 있는 함수 사용 예시
    func randomInt() -> Int {
        Int.random(in: 1...100)
    }
    
    func getToday() -> String {
        let format = DateFormatter()
        format.dateFormat = "yy년 MM월 dd일"
        let today = format.string(from: Date())
        
        return today
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        //TextField에 적었던 내용(text) 영구적으로 저장 key(주머니 이름): "num"
        // 저장만하고 보여주는건 추가 코드 작성해야함.
        UserDefaults.standard.set(numberTextField.text, forKey: "num")
        
        //사용자에게 성공적으로 저장이 되었다는 알람을 주기
        //Alert
        // 1. 타이틀 + 메시지
        let saveAlert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        // 2. 버튼 (영역 분리되어 있음)
        let ok = UIAlertAction(title: "확인", style: .default)
        let test1 = UIAlertAction(title: "test1", style: .default)
        let test2 = UIAlertAction(title: "test2", style: .default)
        let test3 = UIAlertAction(title: "test3", style: .default)
        let test4 = UIAlertAction(title: "취소", style: .cancel)
        // 3. 본문에 버튼 추가 -> 순서대로 붙음
        saveAlert.addAction(ok)
        saveAlert.addAction(test1)
        saveAlert.addAction(test2)
        saveAlert.addAction(test3)
        saveAlert.addAction(test4)
        // 4. 화면에 띄우기
        present(saveAlert, animated: true)
        
        
        
    }
    // Event : Editing Changed
    @IBAction func textFieldTextChanged(_ sender: UITextField) {
        /*
         실시간으로 label에 내용 반영
         입력한 내용이 숫자라면 숫자 그대로 출력
         입력한 애용이 문자라면 "숫자가 아닙니다" 출력
         */
        
        //Optional String -> String
        guard let numCheck = numberTextField.text else {
            print("Optional Error")
            return
        }
        
        guard let intnumCheck = Int(numCheck) else {
            resultLabel.text = "숫자가 아닙니다"
            return
        }
        resultLabel.text = "\(intnumCheck)"
        
//        if Int(numCheck) != nil {
//            print(Int(numCheck)!)
//        } else {
//            print("숫자(Int형)가 아닙니다")
//        }
        
//        if let intnumCheck = Int(numCheck) {
//            resultLabel.text = "\(intnumCheck)"
//        } else {
//            resultLabel.text = "숫자(Int형)가 아닙니다"
//        }
        
        //실시간으로 label에 내용 반영 확인
//        resultLabel.text = numCheck
        
    }
    

}
