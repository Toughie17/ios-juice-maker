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

    var recipe: [Fruit: Int] {
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

/*
 질문2.
 - FruitJuice 열거형을 따로 만든 이유가 무엇일까요?
 - var recipe 부분의 형태는 처음 봐서 어떤 식으로 짜셨는지 궁금합니다.
    기존에 만들어둔 Fruit Enum을 키값으로, Value(필요수량)를  Int타입으로 하는 딕셔너리 형태인 것은 알겠습니다.
        (근데 여기는 Fruit.swift랑 다른 파일인데 불러와서 사용할 수 있는 것은 어떤 개념일까요? 어떤 부분을 공부하면 이해가 가능할까요?)
 
    보통 변수 초기화시 할당연산자 = 를 활용해 우측에 값을 넣는데 switch self를 사용한 것이 신기해서요
    아래에 제가 이해한 것이 맞는지 확인 부탁드립니다!
    self == recipe, 키값인 Fruit 열거형에서 접근연산자를 활용해 각 case별로, [Fruit.something: Int] 을 리턴 -> 이 리턴값이 recipe에 하나씩 들어가는 건가요?
    지금 코드는 과일쥬스별 레시피가 recipe 변수에 전부 들어 있는 형태일까요?
 
 */
