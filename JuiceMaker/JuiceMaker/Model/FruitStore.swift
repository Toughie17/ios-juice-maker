//
//  JuiceMaker - FruitStore.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class FruitStore {
    private let defaultStock: UInt = 10

    private(set) lazy var fruitStock: [Fruit : UInt] = {
        var stock: [Fruit : UInt] = [:]
        Fruit.allCases.forEach { fruit in
            stock[fruit] = defaultStock
        }
        return stock
    }()
    
    func addStock(for fruit: Fruit, number: UInt) {
        guard let currentNumber = fruitStock[fruit] else { return }
        fruitStock.updateValue(currentNumber + number, forKey: fruit)
    }
    
    func consumeStock(for fruit: Fruit, number: UInt) {
        guard let currentNumber = fruitStock[fruit] else { return }
        guard currentNumber >= number else {
            print(InfoMessage.noStock.rawValue)
            return
        }
        fruitStock.updateValue(currentNumber - number, forKey: fruit)
    }
}

/* ==================================================================================


 
*/

/* ==================================================================================
질문 3.
- 과일의 재고를 관리하는 FruitStore를 class로 만든 이유는 무엇일까요?
    ⚠️ 처음에 싱글톤으로 생성하고 싶었고, 그래서 class 로 제작하고 있었는데요
        프로젝트 요구사항중에 JuiceMaker 가 FruitStore 를 소유해야 한다고 해서
        싱글톤으로 만들지 않고 일단 그대로 냅두었구요..
 
        그리고 FruitStore 가 저장 속성을 가지고 있는데
        struct 로 하게되면 함수에 mutating 키워드를 계속 붙여야되는 걸로 알고 있거든요
        그래서 그냥 class 가 더 적합하겠다? 싶었습니다
        
        그리고 무엇보다 파일 처음에 열었을 때 class... ㅎㅎ.. ㅠㅠ..
 
- 초기 재고 상수를 따로 만든 이유가 있을까요?
    ⚠️  프로그래밍에서 뭐든지 값을 직접 넣는 것인 지양하는 걸로 알고 있어요
        (유지보수와 코딩시 오류 방지를 위한 목적으로)
        그렇지 않으면 10 이라는 숫자를 코드 안에서 찾아서 변경해야하니까요!
        그 외 특별한 이유는 없었습니다!
 
- fruitStock 변수를 지연저장 프로퍼티(lazy)로 하신 이유가 있을까요?
    ⚠️  lazy 하지 않으면 fruitStock 변수를 선언하는데 오류가 나요!
        
        만약 제가 lazy var 로 선언하지 않으면 (var fruitStock)
        선언 시 사용하는 defaultStock 값을 알지를 못해요!
 
        예를 들어 var a = 1
                var b = a + 1
        일 때, a값에 아직 1 이 들어오지 않았다면 b 변수 선언은 에러가 나겟죠?
        그러면 항상 b 는 a 가 선언된 후에 만들어 질 수 있도록 하는 방법으로
                var a = 1
                lazy var b = a + 1
        이렇게 생각해봤습니다!
 
 
 
- lazy var fruitStock: [Fruit : UInt] = {
 var stock: [Fruit : UInt] = [:]
 Fruit.allCases.forEach { fruit in
     stock[fruit] = defaultStock
 }
 return stock
}()
 
 위 코드는 사실 이해가 잘 안되는데, 고차함수를 공부하고 다시 봐야겠죠..?
 Fruit의 모든 케이스를 키값으로, 이 키들에 매칭되는 벨류에 10을 전부 넣어주는 코드인 것 같은데 정확히는 이해가 아직..ㅜㅜ
    ⚠️ 쉬운 방법이 잘 생각이 안나서.. 이렇게 짜버렸습니다 ㅠㅠ
       이해를 돕기위해 설명드리자면요..!
 
        1) var fruitStock = { CODE }()
        위 코드는 중괄호 안의 CODE 를 실행한 값을 FruitStock 에 할당할거다! 라는 뜻입니다.
        소괄호 () 가 있으니 실행한 값을 할당한다는 뜻이에요!
 
        2) 타입과 리턴에 대한 설명
        lazy var fruitStock: [Fruit : UInt] = {
            var stock: [Fruit : UInt] = [:]
            CODE
            return stock
         }()
 
        먼저 선언하려는 변수 fruitStock 의 타입은 [Fruit : UInt] 이죠
        제가 중괄호 안의 CODE를 실행해서 나온 값을 할당한다고 했는데
        CODE 안에 실행한 값은 결국 [Fruit : UInt] 를 리턴해야해요 (fruitStock의 타입)
 
        즉, [Fruit : UInt] 타입을 가지는 임의의 변수 stock 을 지역변수로 선언하고
        그 값에 대한 세팅을 CODE 로 작성한 것이구요
        그 값을 리턴하여 fruitStock 에 할당하는 코드입니다!
 
        그래서 저 모양이 나온거에요!
 
        좋은 코드는 아니거같은데.. 제가 생각할 수 있는게 이거였어요 ㅠㅠ
 
- 과일수량 변경 함수에서 guard let 구문을 활용하신 이유가 있을까요? value가 nil일 가능성이 현재 있는지, 안전을 위해 작성하신 것인지 궁금합니다!
 
    ⚠️ 딕셔너리 값을 호출하면요!
        예를들어 dict = ["A" : "apple", "B" : "banana"]
        dict["A"]
        이렇게 하면 "apple" 이 나올 거 같잖아요?
        근데 이 값이 옵셔널로 감싸져 있습니다!
        그래서 옵셔널 값을 벗기기 위해 사용했습니다
 
 
- func use는 func add와 거의 유사한 함수네요. 우선 네이밍 같은 부분은 나중에 함께 고민해 보시죠 :)
    ⚠️  네 맞아요! 사실 파라미터 값을 더하냐, 빼냐 의 차이 밖에 없어요
        기능 구현에 최대한 초점을 맞춰서 네이밍도 부족할 거에요 ㅠㅠ..
        기능 구현이 완성되면 함께 고민해보아요~~
        

 */
