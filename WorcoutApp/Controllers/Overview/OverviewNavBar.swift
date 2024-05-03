//
//   OverviewNavBar.swift
//  WorcoutApp
//
//  Created by Mark Furman on 01.05.2024.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottonBorder(with: Resources.Colors.separator, height: 12)
    }
    
    func addAllWorkoutsActions(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdditingActions(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
}

extension OverviewNavBar {
    override func addViews() {
        
        addSubview(titleLabel)
        addSubview(allWorkoutsButton)
        addSubview(addButton)
         
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widt hAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    override func configure() {
        super.configure()
        backgroundColor = .white
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = Resources.Strings.NuvBar.overview
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(Resources.Images.Common.add, for: .normal)
    }
}

