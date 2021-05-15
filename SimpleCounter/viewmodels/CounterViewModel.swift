//
//  CounterViewModel.swift
//  SimpleCounter
//
//  Created by matrix on 15/05/2021.
//

import Foundation
import SwiftUI

class CounterViewModel: ObservableObject {
    
    @Published private var counter: CounterModel = CounterModel()
    
    
    var value: Int {
        counter.value
    }
    
    var isPremium: Bool {
        counter.premium
    }
    
    
    func increment() {
        counter.increment()
    }
    
}
