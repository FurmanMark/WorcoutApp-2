//
//  SettingsController.swift
//  WorcoutApp
//
//  Created by Mark Furman on 25.04.2024.
//

import UIKit

class SettingsController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }
}
