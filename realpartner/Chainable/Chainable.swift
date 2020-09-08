//
//  Chainable.swift
//  realpartner
//
//  Created by Developer Appg on 2020/09/07.
//  Copyright © 2020 appg. All rights reserved.
//

import Foundation

class Chain<Origin> {
    
    var origin: Origin
    
    init(origin: Origin) {
        self.origin = origin
    }
}

/*
 Chainable 프로토콜을 상속 받은 클래스는 체인 형태로 사용이 가능하다
 */
protocol Chainable {}

extension Chainable {
    var chain: Chain<Self> {
        return Chain(origin: self)
    }
}
