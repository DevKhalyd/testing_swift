//
//  trailing_closures.swift
//  testing_swift
//
//  Created by Rolando Garcia on 26/03/22.
//

import Foundation


// Ref: https://docs.swift.org/swift-book/LanguageGuide/Closures.html topic: Trailing closures

func someFunctionThatTakesAClosure( closure: () -> Void) {
    // function body goes here
    print("Before the closure call")
    closure()
}

func testingSomeFunction(){
    // Here's how you call this function without using a trailing closure:

    someFunctionThatTakesAClosure(closure: {
        // closure's body goes here
        print("Function called without using a trailing closure")
    })

    // Here's how you call this function with a trailing closure:
    someFunctionThatTakesAClosure() {
        // trailing closure's body goes here
        print("Function called using a trailing closure")
    }
    
    // Here's how you call this function with a trailing closure like SwiftUI
    someFunctionThatTakesAClosure {
        // trailing closure's body goes here
        print("Function called using a trailing closure without parentheses")
    }

}

/*
 
 Examples of using trailing closures
 
 Also take consideration that the return is not needed if its just one instruction. Swift infer it
 
 reversedNames = names.sorted() { $0 > $1 }
 
 If a closure expression is provided as the function’s or method’s only argument and you provide that expression as a trailing closure, you don’t need to write a pair of parentheses () after the function or method’s name when you call the function:
 
 reversedNames = names.sorted { $0 > $1 }
 
*/

/*
 
 Another example:
 
 func loadPicture(from server: Server, completion: (Picture) -> Void, onFailure: () -> Void) {
     if let picture = download("photo.jpg", from: server) {
         completion(picture)
     } else {
         onFailure()
     }
 }
 
 NOTE: The second parameter don't use the name paremeter instead use a trailing closure
 
 loadPicture(from: someServer) { picture in
     someView.currentPicture = picture
 } onFailure: {
     print("Couldn't download the next picture.")
 }
 
 */



