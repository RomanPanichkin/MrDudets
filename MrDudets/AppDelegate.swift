//
//  AppDelegate.swift
//  MrDudets
//
//  Created by Anton on 05/10/16.
//  Copyright © 2016 Anton Karpov. All rights reserved.
//

import UIKit

import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        Fabric.with([Crashlytics.self])
        
        //set the bundle ID. normally you wouldn't need to do this
        //as it is picked up automatically from your Info.plist file
        //but we want to test with an app that's actually on the store
        iRate.sharedInstance().applicationBundleID = "com.charcoaldesign.rainbowblocks-free"
        iRate.sharedInstance().onlyPromptIfLatestVersion = false
        
        //enable preview mode
        iRate.sharedInstance().previewMode = true
        
        return true
    }

}

