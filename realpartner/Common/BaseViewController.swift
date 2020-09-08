//
//  BaseViewController.swift
//  realpartner
//
//  Created by Developer Appg on 2020/09/07.
//  Copyright © 2020 appg. All rights reserved.
//

import Foundation
import UIKit
import RxCocoa
import RxSwift

@objc protocol BaseViewControllerCustomizable {
    @objc optional func setupView()
    @objc optional func setupBindings()
}

class BaseViewController: UIViewController, BaseViewControllerCustomizable {
    
    var disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _setupViews()
        _setupBindings()
    }
    
    private func _setupViews() {
        view.backgroundColor = .white
        
        (self as BaseViewControllerCustomizable).setupView?()
    }
    
    private func _setupBindings() {
        let tapper = UITapGestureRecognizer()
        tapper.rx.event.asDriver().drive(onNext: { [weak self] _ in
            self?.view.endEditing(true)
            }).disposed(by: disposeBag)
        view.addGestureRecognizer(tapper)
        
        (self as BaseViewControllerCustomizable).setupBindings?()
    }
}
