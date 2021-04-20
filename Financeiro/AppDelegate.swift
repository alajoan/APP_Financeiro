//
//  AppDelegate.swift
//  Financeiro
//
//  Created by Jonathan Alajoan Rocha on 23/03/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = UIStoryboard.buildMainController()
        window!.makeKeyAndVisible()
    }

}

