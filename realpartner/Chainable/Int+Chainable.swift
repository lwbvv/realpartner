//
//  Int+Chainable.swift
//  realpartner
//
//  Created by Developer Appg on 2020/09/07.
//  Copyright © 2020 appg. All rights reserved.
//

import Foundation

extension Int: Chainable {}

extension Chain where Origin == Int {
    func increase() -> Chain {
        origin += 1
        return self
    }
    
    func decrease() -> Chain {
        origin -= 1
        return self
    }
}
