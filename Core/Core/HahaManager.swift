//
//  HahaManager.swift
//  Core
//
//  Created by Fachri Febrian on 24/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import Foundation
import Crashlytics

public class HahaManager {
    public static let shared: HahaManager = HahaManager()
    
    public func haha() {
        print("HahaManager haha")
    }
    
    @objc public func logCrashlytics(error: Error) {
        Crashlytics.sharedInstance().recordError(error)
    }
    
    @objc public func logError(text: String) {
        print("logError \(text)")
    }
}
