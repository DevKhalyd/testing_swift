//
//  main.swift
//  testing_swift
//
//  Created by Rolando Garcia on 31/01/22.
//

import Foundation



// Just some extra information...

// Optional bindings

// Use optional when u want to extract a value from a optional var (String?)
func optionalBinding(){
    
    let numberAsString : String = "12323a" // or asdsad
    // Executes the else statement
    
    if let number = Int(numberAsString) {
        print("The number is \(number)")
    }else{
        print("Cannot convert to Int because of \(numberAsString)")
    }
}

func optionalBindingComplex(){
    
    // A few optional binding
    // So if one of them are not a number then evaluates to false
    if let numberA = Int("123"), let numberB = Int("23") {
        print ("The sum is: \(numberA + numberB)")
    }else {
        print("One of those values are not numbers")
    }
    
}

func main() {
    print("This is the entry point to test each part of my application")
}

main()
