//
//  AppDelegate.swift
//  Wedding
//
//  Created by point on 2017/5/11.
//  Copyright © 2017年 dacai. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UITabBar.appearance().tintColor = UIColor.orange
        UINavigationBar.appearance().barTintColor = UIColor.black
        return true
    }
    
}

