//
//  switch.swift
//  testing_swift
//
//  Created by Rolando Garcia on 28/02/22.
//

import Foundation

func testingSwitch(){
    // fallthrough allow to go to the next case, because swift break when a match is found
    let integerToDescribe = 2
    var description = ""
    switch integerToDescribe {
    case 2, 3, 5, 7, 11, 13, 17, 19:
        description += " a prime number, and also "
        fallthrough
    case 1:
        description += "1 is an integer "
        fallthrough
    case 10:
        description += "10 is another number "
        fallthrough
    default:
        description += " an integer. "
    }
    print(description)
    // Prints "The number 5 is a prime number, and also an integer."
}
