//
//  AppDelegate.swift
//  Giants Task
//
//  Created by A.Rahman on 12/6/18.
//  Copyright © 2018 per. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if let token = helper.getApiToken(){
            print ("token\(token)")
        }
        
        return true
    }


  
}

