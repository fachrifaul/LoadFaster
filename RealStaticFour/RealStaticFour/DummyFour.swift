//
//  DummyFour.swift
//  RealStaticFour
//
//  Created by Fachri Febrian on 25/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

import Foundation

public class DummyFour {
    public static let shared: DummyFour = DummyFour()
    
    public func haha() {
        print("DummyFour haha")
    }
}
