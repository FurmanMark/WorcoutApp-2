//
//  BaseView.swift
//  WorcoutApp
//
//  Created by Mark Furman on 01.05.2024.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configureView()
        
    }
        
        required init?(coder: NSCoder) {
            fatalError("Init(coder:) has not been implemented")
    }
}
    
@objc extension BaseView {
        func addViews() {}
        func layoutViews() {}
        func configureView() {}
    }
