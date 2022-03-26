//
//  sorted_method.swift
//  testing_swift
//
//  Created by Rolando Garcia on 26/03/22.
//

import Foundation


// Ref: https://docs.swift.org/swift-book/LanguageGuide/Closures.html

func sortMethod(){
    
    print("Testing Sort method")
    
    let names  = ["Rolando", "Ruven","David","Carlos"]
    
    // The way to call a closure...
    // If we use just one instruction then dont use return...
    let newNames = names.sorted { n1, n2 in n1 > n2 }
    // Implicit Returns from Single- Expression Closures
    print(newNames)
}


func shortHandArgumentsName() {
    
    print("Testing short arguments")
    
    let names  = ["Rolando", "Ruven","David","Carlos"]
    
    
    // So basically makes reference to n1 and n2 parameters and just apply the return logic
    let newNames = names.sorted(by: { $0 > $1 })
    
    print(newNames)
}

func evenShortestWaytoDoIt () {
    print("Testing shortest way")
    
    
    let names  = ["Rolando", "Ruven","David","Carlos"]
    
    
    // Swift infer that want a specific way implementation...
    // From my perspective I think this is too shortest and some complicated to read
    // I prefer use the above way.
    let newNames = names.sorted(by: > )
    
    print(newNames)
}

