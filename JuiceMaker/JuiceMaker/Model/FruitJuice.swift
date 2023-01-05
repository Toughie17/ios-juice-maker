//
//  FruitJuice.swift
//  JuiceMaker
//
//  Created by 신동오 on 2023/01/04.
//

import Foundation

enum FruitJuice {
    case strawberry
    case banana
    case kiwi
    case pineapple
    case strawberryBanana
    case mango
    case mangoKiwi

    var recipe: [Fruit: UInt] {
        switch self {
        case .strawberry:
            return [Fruit.strawberry: 16]
        case .banana:
            return [Fruit.banana: 2]
        case .kiwi:
            return [Fruit.kiwi: 3]
        case .pineapple:
            return [Fruit.pineapple: 2]
        case .strawberryBanana:
            return [Fruit.strawberry: 10, Fruit.banana: 1]
        case .mango:
            return [Fruit.mango: 3]
        case .mangoKiwi:
            return [Fruit.mango: 2, Fruit.kiwi: 1]
        }
    }
}

/* ==================================================================================
 질문2.
 - FruitJuice 열거형을 따로 만든 이유가 무엇일까요?
    ⚠️  Fruit 과 마찬가지로 종류를 한정적으로 타입으로 만든 것이에요!
         과일쥬스의 종류가 한정적이므로 enum 으로 만들었습니다.!

         **그리고 한정적인 케이스로 묶어 두어야 나중에 다른 함수에서 파라미터로 받을 때 케이스에 해당하는 것만을 input 으로 받을 수 있는 점이 중요한거 같아요

 - var recipe 부분의 형태는 처음 봐서 어떤 식으로 짜셨는지 궁금합니다.
    기존에 만들어둔 Fruit Enum을 키값으로, Value(필요수량)를  UInt타입으로 하는 딕셔너리 형태인 것은 알겠습니다.
        (근데 여기는 Fruit.swift랑 다른 파일인데 불러와서 사용할 수 있는 것은 어떤 개념일까요? 어떤 부분을 공부하면 이해가 가능할까요?)
 
     ⚠️  저희가 보기엔 파일 별로 나뉘어져 있지만, 실제 프로그램을 실행할 때는 코드 영역에 다같이 들어가게 되요!
         그리고 "타입"같은 경우에는 코데힙스 중 데이터 영역에 들어가고, "전역" 으로 사용할 수 있어요
         
         cf) 만약에 Fruit.swift 에 단순히 var name = "kim" 이렇게 변수선언을 했다면
             "지역변수"이고, FruitJuice.swift 파일에서는 사용할 수 없겠죠!
     
    보통 변수 초기화시 할당연산자 = 를 활용해 우측에 값을 넣는데 switch self를 사용한 것이 신기해서요
    아래에 제가 이해한 것이 맞는지 확인 부탁드립니다!
    self == recipe, 키값인 Fruit 열거형에서 접근연산자를 활용해 각 case별로, [Fruit.something: UInt] 을 리턴 -> 이 리턴값이 recipe에 하나씩 들어가는 건가요?
    지금 코드는 과일쥬스별 레시피가 recipe 변수에 전부 들어 있는 형태일까요?
 
    ⚠️  아니요!
        해당 선언은 계산속성 입니다.!
 
        var a = FruitJuice.strawberry 라고 하면
        a 는 열거형 FruitJuice 중에 .strawberry 타입이겠죠?
        그러면 a 는 recipe 라는 계산속성을 사용할 수 있게 됩니다
        즉 a.recipe 가 가능한거죠!
 
            ex) 계산속성에 대한 간단한 예제를 보여드리자면(기억하실거에요!)
            ex) class MyClass {
                    var birth = 2000
                    var age:UInt {
                        return 2023 - self.birth
                    }
                }
                let kim = MyClass()
                kim.age      // 23
        
 
        그럼 a.recipe 를 호출하면 어떻게 되는 것이냐!
        switch self 를 타겠죠!
        그럼 self 즉 a의 FruitJuice 타입을 의미할 거에요(이 부분은 저도 정확하게는 모르겠어요!)
             var a = FruitJuice.strawberry
             a.recipe 에서 self 는 strawbery
             var b = FruitJuice.banana
             b.recipe 에서 self 는 banana
 
        즉, 계산속성을 요청했을 때 "a의 타입에 따라" switch 문을 타게 되고
        switch 문의 case 에 따라 딕셔너리를 리턴하게 되는거에요
 
        var a = FruitJuice.strawberry
        a.recipe  //  [Fruit.strawberry: 16]
 
        var b = FruitJuice.banana
        b.recipe  //  [Fruit.banana: 2]
 
 */
