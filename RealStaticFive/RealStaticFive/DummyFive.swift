//
//  DummyFive.swift
//  RealStaticFive
//
//  Created by Fachri Febrian on 25/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import Foundation

public class DummyFive {
    public static let shared: DummyFive = DummyFive()
    
    public func haha() {
        print("DummyFive haha")
    }
}
