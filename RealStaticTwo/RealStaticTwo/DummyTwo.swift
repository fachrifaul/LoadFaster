//
//  DummyTwo.swift
//  RealStaticTwo
//
//  Created by Fachri Febrian on 25/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import Foundation

public class DummyTwo {
    public static let shared: DummyTwo = DummyTwo()
    
    public func haha() {
        print("DummyTwo haha")
    }
}
