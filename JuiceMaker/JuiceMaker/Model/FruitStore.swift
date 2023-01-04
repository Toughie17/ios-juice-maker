//
//  JuiceMaker - FruitStore.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 과일 저장소 타입
class FruitStore {
    // 각 과일의 초기재고 10개
    let defaultStock = 10
    
    // FruitStore가 관리하는 과일의 종류: 딸기, 바나나, 파인애플, 키위, 망고
    lazy var fruitStock: [Fruit : Int] = {
        var stock: [Fruit : Int] = [:]
        Fruit.allCases.forEach { fruit in
            stock[fruit] = defaultStock
        }
        return stock
    }()
    
    // 각 과일의 수량 n개를 변경하는 기능이 있습니다
    func add(fruit: Fruit, number: Int) {
        guard let currentNumber = fruitStock[fruit] else {return}
        fruitStock.updateValue(currentNumber + number, forKey: fruit)
    }
    
    // 과일쥬스 메이커에서 사용하려고 하는데 아직 사용은 안했어요
    func use(fruit: Fruit, number: Int) {
        guard let currentNumber = fruitStock[fruit] else {return}
        fruitStock.updateValue(currentNumber - number, forKey: fruit)
    }
}


/*
질문 3.
- 과일의 재고를 관리하는 FruitStore를 class로 만든 이유는 무엇일까요?
- 초기 재고 상수를 따로 만든 이유가 있을까요?
- fruitStock 변수를 지연저장 프로퍼티(lazy)로 하신 이유가 있을까요?
 
- lazy var fruitStock: [Fruit : Int] = {
 var stock: [Fruit : Int] = [:]
 Fruit.allCases.forEach { fruit in
     stock[fruit] = defaultStock
 }
 return stock
}()
 
 위 코드는 사실 이해가 잘 안되는데, 고차함수를 공부하고 다시 봐야겠죠..?
 Fruit의 모든 케이스를 키값으로, 이 키들에 매칭되는 벨류에 10을 전부 넣어주는 코드인 것 같은데 정확히는 이해가 아직..ㅜㅜ
 
 
- 과일수량 변경 함수에서 guard let 구문을 활용하신 이유가 있을까요? value가 nil일 가능성이 현재 있는지, 안전을 위해 작성하신 것인지 궁금합니다!
- func use는 func add와 거의 유사한 함수네요. 우선 네이밍 같은 부분은 나중에 함께 고민해 보시죠 :)
 
 */
