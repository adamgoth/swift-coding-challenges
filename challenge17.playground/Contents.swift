//: Playground - noun: a place where people can play

/*
 Challenge 17: Generate a random number in a range
 Difficulty: Easy
 Write a function that accepts positive minimum and maximum integers, and returns a random number between those two bounds, inclusive.
 Sample input and output
 • Given minimum 1 and maximum 5, the return values 1, 2, 3, 4, 5 are valid.
 • Given minimum 8 and maximum 10, the return values 8, 9, 10 are valid.
 • Given minimum 12 and maximum 12, the return value 12 is valid.
 • Given minimum 12 and maximum 18, the return value 7 is invalid.
*/

import UIKit

func randomNumberInRange(_ min: Int, to max: Int) -> Int {
    
// one-liner
    return Int(arc4random_uniform(UInt32(max - min))) + min
    
// first attempt
//    let range = UInt32(max - min)
//    let random = arc4random_uniform(range)
//    return max - Int(random)
}


randomNumberInRange(1, to: 5)
randomNumberInRange(8, to: 10)
randomNumberInRange(12, to: 12)
randomNumberInRange(12, to: 18)