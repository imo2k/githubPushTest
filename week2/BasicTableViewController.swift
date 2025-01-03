//
//  BasicTableViewController.swift
//  week2
//
//  Created by GO on 1/2/25.
//

import UIKit

class BasicTableViewController: UITableViewController {

    var list = ["프로젝트", "메인업무", "새싹과제"] {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var age = 16
//        var monster = Monster() //  monster = 인스턴스 "인스턴스를 만들었다" <- 라고 함.
//        monster.initializer(a: "김치", b: 1, c: 2, d: 3)
        
        
        
        /*
        // cell 높이가 고정일 때는 이게 더 편함
        tableView.rowHeight = 80.0
        */
    }
    @IBAction func randomTextTapped(_ sender: UIBarButtonItem) {
        let randomList = ["장보기", "저녁 준비하기", "빨래하기", "설거지하기", "복습하기", "새싹과제하기", "산책하기"]
        list.append(randomList.randomElement()!)
        // list에는 추가되었지만 cell 관련 함수들이 종료된 상태라 cell 추가는 안된 상태
        
        // ⭐️⭐️View와 Data는 따로 놀아서, 늘 잘 맞춰주어야 한다...⭐️⭐️
        tableView.reloadData()
        // 하나하나 다시 메서드를 불러오는 방법도 있지만
        // ... 귀찮으니까 tableView에 대한 모든걸 reloadData로 다시 불러오기
        
        print(#function)
    }
    
    // ⭐️ 필수 요소 ⭐️
    
    // 1. 셀의 개수 : numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return 생략하고 100만 적어도 되긴 함
        print(#function)
        print(list.count)
        return list.count // 배열에 추가가 되면 그대로 카운트해서 개수가 추가됨
    }
    
    // 2. 셀 디자인 및 데이터 처리 ⭐️ : cellForRowAt ⭐️
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // aCell을 재사용(dequeueReusableCell)하고 싶다~
        let cell = tableView.dequeueReusableCell(withIdentifier: "aCell")!
        
        // ?이후가 존재하지 않으면 실행 X
        cell.textLabel?.text = "텍스트 레이블"
        
        // [section, row]
//        if indexPath.row == 0 {
//            cell.textLabel?.text = list[indexPath.row]
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = list[indexPath.row]
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = list[indexPath.row]
//        } else {
//            cell.textLabel?.text = "오류"
//        }
        
        cell.textLabel?.text = list[indexPath.row] //위 코드와 같은 기능
        
//        cell.detailTextLabel?.text = "디테일 텍스트 레이블"
        cell.detailTextLabel?.setPrimaryLabel("test")
        
        cell.textLabel?.textColor = .blue
        cell.textLabel?.font = .systemFont(ofSize: 30)
        
        // ⭐️ 100% 모든 데이터에 대해서 대응한다면 오류 발생하지 않음.⭐️
        
        // 3번 이하 인덱스에 대해서 회색 배경
//        if indexPath.row <= 3 {
//            cell.backgroundColor = .lightGray
//        } else if indexPath.row > 3 {
//            cell.backgroundColor = .white
//        }
        
        // 횡단보도식으로 background Color 구성
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .yellow
        } else {
            cell.backgroundColor = .green
        }
        
        print(#function, indexPath)
        return cell
    }
    
    // 3. 셀의 높이 : heightForRowAt
    // cell 높이가 ⭐️유동적일 때는 heightForRowAt⭐️
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        print(#function, indexPath.row)
        return 80.0
    }
    
    // cell이 클릭되는 기능
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function, indexPath)
        
        list.remove(at: indexPath.row) // 선택된 row 삭제
        tableView.reloadData() // 데이터의 변경사항 있을 때마다 reloadData
    }

}
