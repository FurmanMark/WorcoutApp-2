//
//  SceneDelegate.swift
//  WorcoutApp
//
//  Created by Mark Furman on 15.04.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
                
        
                let tabBarController = TapBarController()
        
                guard let windowScene = (scene as? UIWindowScene) else { return }
                window = UIWindow(frame: windowScene.coordinateSpace.bounds)
                window?.windowScene = windowScene;
                window?.rootViewController = tabBarController
                window?.makeKeyAndVisible()
    }
  
}

//
//func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//    guard let windowScene = (scene as? UIWindowScene) else { return }
//
//    // Создание экземпляра вашего настроенного TapBarController
//    let tabBarController = TapBarController()
//
//    window = UIWindow(frame: windowScene.coordinateSpace.bounds)
//    window?.windowScene = windowScene
//    window?.rootViewController = tabBarController  // Установка TapBarController в качестве корневого контроллера
//    window?.makeKeyAndVisible()
//}
