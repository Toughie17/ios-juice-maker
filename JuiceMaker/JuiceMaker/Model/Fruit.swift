//
//  Fruit.swift
//  JuiceMaker
//
//  Created by 신동오 on 2023/01/04.
//

import Foundation

enum Fruit: CaseIterable {
    case strawberry
    case banana
    case pineapple
    case kiwi
    case mango
}


/*
질문 드리기 전.. 제가 드리는 질문은 대부분 순수한 궁금증 + 코드를 이해하고 넘어가기 위해서 입니다 :)
질문이 되게 많을 수 있어요..ㅋㅋ

질문1.
 - Fruit을 열거형으로 만든 이유가 무엇일까요? (class, struct이 아닌)
    ->  과일 가게에서 과일의 종류를 무한히 가지지는 않을 거라고 생각합니다.!
        그래서 그 과일의 종류들을 한 묶음으로 묶을 수 있게 하고 싶었고 그래서 enum(열거형) 을 사용해서 담았습니다
        그러면 과일이라는 타입을 Fruit 에다가 . 을 찍으면 한정된 케이스만 선택할 수 있으니까요!
 
 - Fruit.swift 파일을 따로 분리해서 만든 이유가 있을까요?
    ->  저희 처음에 야곰 세션에서 처럼 타입은 최대한 쪼갤 수 있을 만큼 쪼개는 것이 좋다고 하였고
        저도 프로그램을 많이 만들어 본 것은 아니라 정확히 어떤것이다! 말씀드릴 수는 없을거 같은데요 ㅠㅠ
        보통 타입을 만들면 파일을 새로 만들어서 작성하더라구요! (가독성, 유지보수시 용이함 때문이라고 생각해요)
 
 - FruitStore.swift 파일 안에 enum을 만들어도 되지 않았을까요?
    FruitStore의 과일을 사용해 쥬스를 제조한다는 조건이 있어서 파일은 FruitStore, JuiceMaker 2개로 가는 것이 어떨까요?
 - 따로 분리해서 관리하는 것의 장점은 무엇인가요? (가독성 등)
    ->  마찬가지라고 생각해요!
        개인적으로는 유지보수가 제일 크다고 생각해요.
        프로젝트 규모가 커지면 수십가지 이상의 타입이 생길텐데요!
        어느 파일에는 2가지 타입이 들어있고 하면 기억하지 못할거라고 생각해요!
        그래서 파일을 각각 하나씩 나눠서 작성하는게 좋다고 생각해요
        
        그리고 함수를 쪼개는 것처럼 파일을 쪼개는 것도
        쪼개는 범위가 다를 수 있고, 쪼개도 되고 안되고 하지만 (개개인의 생각대로)
        저희가 컨벤션을 지키는 것처럼 일종의 약속인 것 같아요
 
 - 열거형에 CaseIterable 프로토콜을 채택한 이유는 무엇인가요? (어디에 필요한가요?)
    ->  배열에 반복문을 사용한다고 하면
        var array = [10, 11, 12]
        for i in array { print(i) }    // 10, 11, 12
        이런식으로 작동하겠죠?
        하지만 열거형은 case 에 대하여 반복문을 사용할 수 없어요
        분명히 반복할 케이스는 유한개인 것이 확실한데 말이죠
        "몇 개 인지 아는데 왜 반복문을 못쓰냐고!!" 라고 생각해서
        CaseIterable 프로토콜을 만들어놓은 것 같아요
        
 */
