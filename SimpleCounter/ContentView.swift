//
//  ContentView.swift
//  SimpleCounter
//
//  Created by matrix on 15/05/2021.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject private var counterVM: CounterViewModel
    
    init() {
        counterVM = CounterViewModel()
    }
    
    var body: some View {
        
        VStack{
            Text(counterVM.isPremium ? "Premium" : "" )
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding()
            
            Text("\(counterVM.value)")
                .font(.title)
                .padding()
            
            Button("Increment", action: {
                counterVM.increment()
            }).foregroundColor(.black)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5)
    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
