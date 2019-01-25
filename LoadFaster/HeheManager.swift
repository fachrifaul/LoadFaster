//
//  HeheManager.swift
//  LoadFaster
//
//  Created by Fachri Febrian on 24/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import Foundation
import Core

@objc public class HeheManager: NSObject{
    @objc public static func logCrashlytics(error: Error) {
        HahaManager.shared.logCrashlytics(error: error)
    }
    
    @objc public static func logError(text: String) {
        HahaManager.shared.logError(text: text)
    }
}

