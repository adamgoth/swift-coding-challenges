//: Playground - noun: a place where people can play

/*
 Challenge 26: Subtract without subtract
 Difficulty: Taxing
 Create a function that subtracts one positive integer from another, without using -.
 Sample input and output
 • The code challenge26(subtract: 5, from: 9) should return 4.
 • The code challenge26(subtract: 10, from: 30) should return 20.
*/

import UIKit

func challenge26(subtract: Int, from: Int) -> Int {
    
    //using bitwise NOT
    return from + (~subtract + 1)
    
    
    //first attempt
    
//    return from + -1 * subtract
}

assert(challenge26(subtract: 5, from: 9) == 4, "Challenge 26 failed")
assert(challenge26(subtract: 10, from: 30) == 20, "Challenge 26 failed")


