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
            print(InfoMessage.noStock.rawValue)
            return
        }
        
        bringFruit(for: juiceName)
    }
    
    private func isEnoughFruit(of juiceName: FruitJuice) -> Bool {
        for (fruit, neededNumber) in juiceName.recipe {
            guard let currentStock = fruitStore.fruitStock[fruit] else { return false }
            guard currentStock >= neededNumber else { return false }
        }
        return true
    }
    
    private func bringFruit(for juiceName: FruitJuice) {
        for (fruit, neededNumber) in juiceName.recipe {
            fruitStore.consumeStock(for: fruit, number: neededNumber)
        }
    }
}
/* ==================================================================================
⭐️ 추가사항
    1.  반복문이 기존에 for (key, value) 에서 for (fruit, neededNumber) 로 바뀌었어요!
        코드에서 좀 더 의미있는 작명이 필요해 보여서 그렇게 했는데
        어색하지 않으련지.. 의견 부탁드려요!
 
 
*/
