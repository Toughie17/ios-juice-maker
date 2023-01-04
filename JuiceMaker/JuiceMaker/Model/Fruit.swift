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
 - Fruit.swift 파일을 따로 분리해서 만든 이유가 있을까요?
 - FruitStore.swift 파일 안에 enum을 만들어도 되지 않았을까요?
    FruitStore의 과일을 사용해 쥬스를 제조한다는 조건이 있어서 파일은 FruitStore, JuiceMaker 2개로 가는 것이 어떨까요?
 - 따로 분리해서 관리하는 것의 장점은 무엇인가요? (가독성 등)
 - 열거형에 CaseIterable 프로토콜을 채택한 이유는 무엇인가요? (어디에 필요한가요?)
 
 */
