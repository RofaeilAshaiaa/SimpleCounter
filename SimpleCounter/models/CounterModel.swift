//
//  CounterModel.swift
//  SimpleCounter
//
//  Created by matrix on 15/05/2021.
//

import Foundation

struct CounterModel {
    
    var value = 0
    var premium = false
    
    
    mutating func increment() {
        value += 1
        if value.isMultiple(of: 3) {
            premium = true
        } else {
            premium = false
        }
    }
}
