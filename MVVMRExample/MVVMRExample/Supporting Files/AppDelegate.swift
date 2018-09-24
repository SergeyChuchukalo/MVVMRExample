//
//  AppDelegate.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/23/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = Router.createRootWindow()
        return true
    }
}

