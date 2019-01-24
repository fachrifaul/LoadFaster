//
//  AppDelegate+Crashlytics.swift
//  LoadFaster
//
//  Created by Fachri Febrian on 24/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import Foundation
import Core
import Crashlytics

extension AppDelegate: CrashlyticsDelegate {
    
    func crashlyticsDidDetectReport(forLastExecution report: CLSReport, completionHandler: @escaping (_: Bool) -> Void) {
        let defaults = UserDefaults.standard
        // don't ask if there's a crash at least ten days earlier
        defaults.set(Date(timeIntervalSinceNow: (3600 * 24 * 10)), forKey: "timeToAskRating")
        defaults.synchronize()
        completionHandler(true)
    }
}
