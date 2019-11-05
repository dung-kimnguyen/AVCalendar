//
//  DynamicType.swift
//  James Lee
//
//  Created by James on 10/03/19.
//  Copyright © 2019 James Lee. All rights reserved.
//

import Foundation

class Dynamic<T> {
    
    var value: T? {
        didSet {
            bind?(value)
        }
    }
    
    var bind: ((T?)->())?
    
    init(_ _value: T) {
        value = _value
    }
}
