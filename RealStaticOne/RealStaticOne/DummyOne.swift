//
//  DummyOne.swift
//  RealStaticOne
//
//  Created by Fachri Febrian on 25/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import Foundation

public class DummyOne {
    public static let shared: DummyOne = DummyOne()
    
    public func haha() {
        print("DummyOne haha")
    }
}
