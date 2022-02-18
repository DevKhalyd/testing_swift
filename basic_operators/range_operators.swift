//
//  range_operators.swift
//  testing_swift
//
//  Created by Rolando Garcia on 17/02/22.
//

import Foundation

// Range operators are shortcuts for expressing a range of values.

func closeRangeOperator() {
    // Usr this range for use each element like a forEach
    for index in 1...5{
        print("Index: \(index). Where start is: 1 and end: 5")
    }
    
}

func halfOpenRangeOperator(){
    // If we have a and b as range the b is not include in the iteration
    // Just the b-1 value
    
    let names = ["Ana","Rolando","Dana"]
    let count = names.count
    
    for i in 0..<count {
        print(names[i])
    }
    // Print all the names
}

func oneSidedRanges(){
    let names = ["Ana","Rolando","Dana","Roberto"]
    
    // Print Ana, Rolando, Dana
    for name in names[...2]{
        print(name)
    }
    
    // print Dana, Roberto
    for name in names[2...] {
        print(name)
    }
    
    // print Ana, Rolando
    for name in names[..<2] {
        print(name)
    }
    
    
}

