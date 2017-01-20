//: Playground - noun: a place where people can play

/*
 Challenge 13: Run-length encoding
 Difficulty: Taxing
 Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.
 Tip: This approach is used in a simple lossless compression technique called run-length encoding.
 Sample input and output
 • The string “aabbcc” should return “a2b2c2”.
 • The strings “aaabaaabaaa” should return “a3b1a3b1a3”
 • The string “aaAAaa” should return “a2A2a2”
 */

import UIKit

//with character look ahead
func runLength(input: String) -> String {
    var result = ""
    var counter = 0
    var array = Array(input.characters)
    
    for i in 0..<input.characters.count {
        counter += 1
        
        if i + 1 == input.characters.count || array[i] != array[i + 1] {
            result.append("\(array[i])\(counter)")
            counter = 0
        }
    }

    return result
}

//first attempt, no character look ahead

//func runLength(input: String) -> String {
//    var result = ""
//    var counter = 0
//    var current: Character!
//    for char in input.characters {
//        if counter == 0 {
//            result.append(char)
//            counter += 1
//            current = char
//        } else {
//            if char == current {
//                counter += 1
//            } else {
//                result.append(String(counter))
//                result.append(char)
//                current = char
//                counter = 1
//            }
//        }
//    }
//    result.append(String(counter))
//    return result
//}

assert(runLength(input: "aabbcc") == "a2b2c2", "Challenge 13 failed")
assert(runLength(input: "aaabaaabaaa") == "a3b1a3b1a3", "Challenge 13 failed")
assert(runLength(input: "aaAAaa") == "a2A2a2", "Challenge 13 failed")
