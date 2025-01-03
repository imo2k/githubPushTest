//
//  Class + Struct.swift
//  week2
//
//  Created by GO on 1/2/25.
//

import Foundation

/*
 1. 가지고 있는 프로퍼티를 모두 초기화
 2. 가지고 있는 프로퍼티를 옵셔널로 선언
    2-1. 값을 지정해주지 않고 사용하면 오류가 발생할 수 있음.
 
 */
class Monster {
    
    // var에 옵셔널 타입으로 선언해둔 경우에는 추후에 값이 들어올 수도 있기 때문에 일단 오류는 발생안함
    let clothes: String
    let speed : Int
    let power : Int
    let experience : Int
    
    // 초기값을 지정해주는 함수
    // 클래스의 모든 프로퍼티 값을 지정해줘야지 프로퍼티들이 초기화됨
    init(clothes: String, speed: Int, power: Int, experience: Int) {
        self.clothes = clothes
        self.speed = speed
        self.power = power
        self.experience = experience
    }
    
}

struct MonsterStruct {
    let clothes: String
    let speed : Int
    let power : Int
    let experience : Int
    
    // init이 없더라고 기본적으로 제공해줌 <= 멤버와이즈 초기화 구문 제공해줌
}

// Monster 클래스 상속
class BossMonster: Monster {
    
}

// Monster 클래스 상속한 BossMonster 클래스 상속
class SuperMonster: BossMonster {
    
}

