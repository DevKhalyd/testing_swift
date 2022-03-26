//
//  escaping_closures.swift
//  testing_swift
//
//  Created by Rolando Garcia on 26/03/22.
//

import Foundation

/*
 
 https://docs.swift.org/swift-book/LanguageGuide/Closures.html
 
 A closure is said to escape a function when the closure is passed as an argument to the function, but is called after the function returns.
 
 When you declare a function that takes a closure as one of its parameters, you can write @escaping before the parameter’s type to indicate that the closure is allowed to escape.

 
 */

// A list of functions
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
    print("Function ended")
}

func testingEscapingClosure(){
    
    someFunctionWithEscapingClosure {
        print("Hello World One")
    }
    
    someFunctionWithEscapingClosure {
        print("Hello World Two")
    }
    
    someFunctionWithEscapingClosure {
        print("Hello World Three")
    }
    // Clean...
    completionHandlers.forEach { $0() }
    // not too clean...
    completionHandlers.forEach { myFunction in myFunction() }
}
