//
//  DummyThree.swift
//  RealStaticThree
//
//  Created by Fachri Febrian on 25/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import Foundation

public class DummyThree {
    public static let shared: DummyThree = DummyThree()
    
    public func haha() {
        print("DummyThree haha")
    }
}
