//: Playground - noun: a place where people can play

/*
 Challenge 25: Calculate a square root by hand
 Difficulty: Taxing
 Write a function that returns the square root of a positive integer, rounded down to the nearest integer, without using sqrt().
 Sample input and output
 • The number 9 should return 3.
 • The number 16777216 should return 4096.
 • The number 16 should return 4.
 • The number 15 should return 3.
*/

import UIKit

extension Int {
    
    //binary search method
    
    func calcSquareRoot() -> Int {
        guard self != 1 else { return 1 }
        
        var lowerBound = 0
        var upperBound = 1 + self / 2
        
        while lowerBound + 1 < upperBound {
            let middle = lowerBound + ((upperBound - lowerBound) / 2)
            let middleSquared = middle * middle
            
            if middleSquared == self {
                return middle
            } else if middleSquared < self {
                lowerBound = middle
            } else {
                upperBound = middle
            }
        }
        
        return lowerBound
    }
    
    //brute force method
    
//    func calcSquareRoot() -> Int {
//        guard self > 0 else { return self }
//        for i in 0...self {
//            if i*i > self {
//                return i - 1
//            }
//        }
//        return self
//    }
    
}

let start = Date()
assert(9.calcSquareRoot() == 3, "Challenge 25 failed")
assert(16777216.calcSquareRoot() == 4096, "Challenge 25 failed")
assert(16.calcSquareRoot() == 4, "Challenge 25 failed")
assert(15.calcSquareRoot() == 3, "Challenge 25 failed")
let end = Date()
print("Took \(end.timeIntervalSince(start)) seconds")
