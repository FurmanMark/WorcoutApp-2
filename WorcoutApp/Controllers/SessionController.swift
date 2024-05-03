//
//  SessionController.swift
//  WorcoutApp
//
//  Created by Mark Furman on 25.04.2024.
//

import UIKit

class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: "Start")
        addNavBarButton(at: .right, with: "Finish")
    }
//    override func navBarLeftButtonHandler() {
//    print("Sessions NavBar left button tapped")
}
