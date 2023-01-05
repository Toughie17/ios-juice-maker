//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

struct JuiceMaker {
    private let fruitStore = FruitStore()
    
    func make(juiceName: FruitJuice) {
        guard isEnoughFruit(of: juiceName) else {
            print("재고부족")
            return
        }
        
        consumeStock(for: juiceName)
    }
    
    private func isEnoughFruit(of juiceName: FruitJuice) -> Bool {
        for (key, value) in juiceName.recipe {
            guard let currentStock = fruitStore.fruitStock[key] else { return false }
            guard currentStock > value else { return false }
        }
        return true
    }
    
    private func consumeStock(for juiceName: FruitJuice) {
        for (key, value) in juiceName.recipe {
            fruitStore.consumeStock(of: key, number: value)
        }
    }
}
