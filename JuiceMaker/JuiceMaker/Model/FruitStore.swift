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
