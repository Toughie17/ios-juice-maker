import Foundation

//과일 저장소 타입

class FruitFeature {
    private(set) var stock: Int = 10
    
    func addStock(_ num: Int) {
        self.stock += num
    }
    
    func subtractStock(_ num: Int) {
        self.stock -= num
    }
    
}

enum Fruits {
    static let strawberry = FruitFeature()
    static let banana = FruitFeature()
    static let kiwi = FruitFeature()
    static let pineapple = FruitFeature()
    static let mango = FruitFeature()
}

//현재 각 과일객체에는 재고, 재고를 증가/감소 시키는 메소드가 있음.
