//
//  SnapKit+Chainable.swift
//  realpartner
//
//  Created by Developer Appg on 2020/09/07.
//  Copyright © 2020 appg. All rights reserved.
//


import SnapKit
import UIKit

extension Chain where Origin: UIView {
    func constraint(_ maker: (ConstraintMaker) -> Void ) -> Chain {
        origin.snp.makeConstraints(maker)
        
        return self
    }
    
    func updateConstraint(_ maker: (ConstraintMaker) -> Void ) -> Chain {
        origin.snp.updateConstraints(maker)
        return self
    }
}
