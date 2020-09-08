//
//  UILabel+Chainable.swift
//  realpartner
//
//  Created by Developer Appg on 2020/09/07.
//  Copyright © 2020 appg. All rights reserved.
//

import UIKit

//extension UILabel: Chainable {}

extension Chain where Origin: UILabel {
    
    func text(_ text: String) -> Chain {
        origin.text = text
        
        return self
    }
    
    func font(_ font: UIFont) -> Chain {
        origin.font = font
    
        return self
    }
    
    func font(_ size: CGFloat, weight: UIFont.Weight) -> Chain {
        return self.font(UIFont.systemFont(ofSize: size, weight: weight))
    }
    
    func color(_ color: UIColor) -> Chain {
        origin.textColor = color
        
        return self
    }
    
    func alignment(_ alignment: NSTextAlignment) -> Chain {
        origin.textAlignment = alignment
        return self
    }
    
    
}
