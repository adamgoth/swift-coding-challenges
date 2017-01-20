//: Playground - noun: a place where people can play

/*
 Challenge 20: Number is prime
 Difficulty: Tricky
 Write a function that accepts an integer as its parameter and returns true if the number is prime.
 Tip: A number is considered prime if it is greater than one and has no positive divisors other than 1 and itself.
 Sample input and output
 • The number 11 should return true.
 • The number 13 should return true.
 • The number 4 should return false.
 • The number 9 should return false.
 • The number 16777259 should return true.
*/

import UIKit

func isPrime(_ input: Int) -> Bool {
    
//most efficient solution
    
    guard input >= 2 else { return false }
    guard input != 2 else { return true }
    let max = Int(ceil(sqrt(Double(input))))
    for i in 2 ... max {
        if input % i == 0 {
            return false
        }
    }
    return true
    
// first attempt
    
//    guard input > 1 else { return false }
//    for i in 2..<input {
//        if input % i == 0 {
//            return false
//        }
//    }
//    return true
    
}

assert(isPrime(11) == true, "Challenge 20 failed")
assert(isPrime(13) == true, "Challenge 20 failed")
assert(isPrime(4) == false, "Challenge 20 failed")
assert(isPrime(9) == false, "Challenge 20 failed")
assert(isPrime(16777259) == true, "Challenge 20 failed")
