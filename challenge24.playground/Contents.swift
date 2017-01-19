//: Playground - noun: a place where people can play

/*
 Challenge 24: Add numbers inside a string
 Difficulty: Tricky
 Given a string that contains both letters and numbers, write a function that pulls out all the numbers then returns their sum.
 Sample input and output
 • The string “a1b2c3” should return 6 (1 + 2 + 3).
 • The string “a10b20c30” should return 60 (10 + 20 + 30).
 • The string “h8ers” should return “8”.
*/

import UIKit

func sumNumbersInString(input: String) -> Int {
    return input.components(separatedBy: .letters).flatMap({ Int(String($0)) }).reduce(0, +)
}

assert(sumNumbersInString(input: "a1b2c3") == 6, "Challenge 24 failed")
assert(sumNumbersInString(input: "a10b20c30") == 60, "Challenge 24 failed")
assert(sumNumbersInString(input: "h8ers") == 8, "Challenge 24 failed")
