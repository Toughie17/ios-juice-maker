//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

// 쥬스 메이커 타입
struct JuiceMaker {
     private let fruitStore = FruitStore()

    func make(juiceName: FruitJuice) {
        for (key, value) in juiceName.recipe {
            guard let currentStock = fruitStore.fruitStock[key] else { return }
            guard currentStock > value else { return print("재고부족") }
        }
        for (key, value) in juiceName.recipe {
            guard let currentStock = fruitStore.fruitStock[key] else { return }
            fruitStore.fruitStock.updateValue(currentStock - value, forKey: key)
        }
    }
}
