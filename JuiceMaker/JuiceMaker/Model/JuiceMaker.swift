//딸기쥬스 딸기 16개
//바나나쥬스 바나나 2개
//키위쥬스 키위 3개
//파인애플 쥬스 파인애플 2개
//딸바쥬스 딸기10개 + 바나나 1개
//망고 쥬스 망고 3개
//망고키위쥬스 망고2개 키위 1개

enum JuiceRecipe {
    static let strawberryJuice = (Fruits.strawberry, 16)
    static let bananaJuice = (Fruits.banana, 2)
    static let kiwiJuice = (Fruits.kiwi, 3)
    static let pineappleJuice = (Fruits.pineapple, 2)
    static let strawberryBananaJuice = (Fruits.strawberry, 10, Fruits.banana, 1)
    static let mangoJuice = (Fruits.mango, 3)
    static let mangoKiwiJuice = (Fruits.mango, 2, Fruits.kiwi, 1)
}

// 우선 위 조건대로 튜플에 담았는데 튜플에 담아야 하는 확실한 근거를 제시하기 어려운 상태
//또한 2가지 이상의 과일이 섞였을 때 인덱싱 하기도 뭔가 불안함. 다른 컬렉션으로 담아야 할까?

struct JuiceMaker {
    
    func makeStrawberryJuice() {
        if Fruits.strawberry.stock >= JuiceRecipe.strawberryJuice.1 {
            Fruits.strawberry.subtractStock(JuiceRecipe.strawberryJuice.1)
            print("쥬스 나왔습니다! 맛있게 드세요!")
        } else {
            print("재료가 모자라요. 재고를 수정할까요?")
        }
    }
    
    /* 쥬스 만드는 함수
     FruitStore의 과일을 사용해 과일 쥬스를 제조
     과일의 재고가 부족하면 과일 쥬스를 제조할 수 없음-> 조건문으로 확인
     JuiceMakersms FruitStore를 소유하고 있음*/
}


