//
//  UIView+Chainable.swift
//  realpartner
//
//  Created by Developer Appg on 2020/09/07.
//  Copyright © 2020 appg. All rights reserved.
//

import Foundation
import UIKit

extension UIView : Chainable {}

extension Chain where Origin: UIView {
    
    func background(color: UIColor) -> Chain {
        origin.backgroundColor = color
        return self
    }
    
    func cornerRadius(_ radius: CGFloat) -> Chain {
        origin.layer.cornerRadius = radius
        origin.clipsToBounds = true
        
        return self
    }
    
    func add(to parent: UIView) -> Chain {
        parent.addSubview(origin)
        
        return self
    }
    
    func size(width: CGFloat, height: CGFloat) -> Chain {
        origin.translatesAutoresizingMaskIntoConstraints = false
        origin.widthAnchor.constraint(equalToConstant: width).isActive = true
        origin.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        return self
    }
    
    func size(_ size: CGSize) -> Chain {
        origin.translatesAutoresizingMaskIntoConstraints = false
        return self.size(width: size.width, height: size.height)
    }
    
    func position(x: CGFloat, y: CGFloat) -> Chain {
        origin.translatesAutoresizingMaskIntoConstraints = false
        guard let parent = origin.superview else { return self }
        origin.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: x).isActive = true
        origin.topAnchor.constraint(equalTo: parent.topAnchor, constant: y).isActive = true
        return self
    }
}
