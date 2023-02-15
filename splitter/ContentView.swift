//
//  ContentView.swift
//  splitter
//
//  Created by Md Shohidur Rahman on 2/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberofPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10,15,20,25,0]
    
    var body: some View {
        Form{
            Section{
                TextField("Amount",value:$checkAmount,format:.currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
            }
            Section{
                Text(checkAmount,format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
