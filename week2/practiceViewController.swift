//
//  practiceViewController.swift
//  week2
//
//  Created by GO on 12/31/24.
//

import UIKit

class practiceViewController: UIViewController {
    
//    let colorList = [UIColor.red, UIColor.yellow]
    let colorList: [UIColor] = [.red, .yellow, .green, .orange, .purple, .cyan]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        print(self, #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print(self, #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        view.backgroundColor = colorList.randomElement()!
        super.viewDidAppear(animated)
        print(self, #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(self, #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(self, #function)
    }
    //위 개념 정리되면 밑에꺼도 좀 보기
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        print(#function)
    }
    
    // 스토리보드에서 연결하는게 아니라, 코드로 직접 타이핑
    // 기존 화면으로 돌아가기
    @IBAction func unwindToPraticeViewController(_ sender: UIStoryboardSegue) {
        print(#function)
    }
}
