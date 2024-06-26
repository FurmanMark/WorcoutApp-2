//
//  TabBarController.swift
//  WorcoutApp
//
//  Created by Mark Furman on 18.04.2024.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TapBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
     
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()
        
        let overviewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionNavigation = UINavigationController(rootViewController: sessionController)
        let progressNavigation = UINavigationController(rootViewController: progressController)
        let settingsNavigation = UINavigationController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.overview,
            image: Resources.Image.TabBar.overview,
            tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.session,
            image: Resources.Image.TabBar.session,
            tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(
            title : Resources.Strings.TabBar.progress,
             image: Resources.Image.TabBar.progress,
            tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBar.settings,
            image: Resources.Image.TabBar.settings,
            tag: Tabs.settings.rawValue)
        
        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ], animated: false)
        
    }
}


