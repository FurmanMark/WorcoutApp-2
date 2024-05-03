//
//  Fonts.swift
//  WorcoutApp
//
//  Created by Mark Furman on 28.04.2024.
//

import UIKit

extension Resources {
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }

}
