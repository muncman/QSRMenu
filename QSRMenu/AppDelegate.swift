//
//  AppDelegate.swift
//  QSRMenu
//
//  Created by Kevin Munc on 12/26/17.
//  Copyright © 2017 Method Up. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let env = ProcessInfo.processInfo.environment
        if env.contains(where: { (key: String, value: String) -> Bool in
            return key == "QSR_XCUI_Testing"
        }) {
            //print("Speeding up animations for UI testing")
            //UIApplication.shared.keyWindow?.layer.speed = 100.0
            print("Disabling UIView animations for UI testing")
            UIView.setAnimationsEnabled(false)
        }
        return true
    }

}

