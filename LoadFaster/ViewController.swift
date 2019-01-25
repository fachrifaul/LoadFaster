//
//  ViewController.swift
//  LoadFaster
//
//  Created by Fachri Febrian on 24/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import UIKit
import Core
import Crashlytics
//import DynamicOne
//import DynamicTwo
//import DynamicThree
//import DynamicFour
//import DynamicFive

import StaticOne
import StaticTwo
import StaticThree
import StaticFour
import StaticFive

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DummyOne.shared.haha()
        DummyTwo.shared.haha()
        DummyThree.shared.haha()
        DummyFour.shared.haha()
        DummyFive.shared.haha()
        
        CrashManager.sharedInstance().logError("Haha")
    }


}

