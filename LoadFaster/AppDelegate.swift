//
//  AppDelegate.swift
//  LoadFaster
//
//  Created by Fachri Febrian on 24/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import UIKit
import Core
import Crashlytics
import Fabric

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        HahaManager.shared.haha()
        
        Crashlytics.sharedInstance().delegate = self
        Fabric.with([Crashlytics.self])
        
        AppDelegate.startCapturingUncaughtExceptions()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}
extension AppDelegate {
    // If the user set their own uncaught exception handler earlier, it gets stored here
    internal static let existingUncaughtExceptionHandler = NSGetUncaughtExceptionHandler()
    
    // This flag prevents infinite loops of uncaught exceptions
    internal static var exceptionHasBeenCalled = false
    internal static func startCapturingUncaughtExceptions() {
        
        NSSetUncaughtExceptionHandler { (uncaughtException: NSException) -> Void in
            
            if !AppDelegate.exceptionHasBeenCalled {
                AppDelegate.exceptionHasBeenCalled = true
                AppDelegate.existingUncaughtExceptionHandler?(uncaughtException)
            }
        }
        
    }
}
