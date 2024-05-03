//
//  NavBarController.swift
//  WorcoutApp
//
//  Created by Mark Furman on 19.04.2024.
//

import UIKit

final class NavBarController: UINavigationController {
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helveticaRegular(with: 17)
        ]
        
        navigationBar.addBottonBorder(with: Resources.Colors.separator, height: 1 )
    }
}
