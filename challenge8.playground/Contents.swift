//: Playground - noun: a place where people can play

/*
 Challenge 8: String is rotated
 Difficulty: Tricky
 Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
 Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
 Sample input and output
 • The string “abcde” and “eabcd” should return true.
 • The string “abcde” and “cdeab” should return true.
 • The string “abcde” and “abced” should return false; this is not a string rotation.
 • The string “abc” and “a” should return false; this is not a string rotation.
 */

import UIKit

//easiest solution

func isRotated(input1: String, input2: String) -> Bool {
    guard input1.characters.count == input2.characters.count else { return false }
    let combined = input1 + input1
    return combined.contains(input2)
}

//alternative solution

//func isRotated(input1: String, input2: String) -> Bool {
//    let index = input1.index(input1.startIndex, offsetBy: 0)
//    let startingLetter = input1[index]
//    if let input2index = input2.characters.index(of: startingLetter) {
//        return input2.substring(from: input2index) + input2.substring(to: input2index) == input1
//    }
//    return false
//}

isRotated(input1: "abcde", input2: "eabcd")

assert(isRotated(input1: "abcde", input2: "eabcd") == true, "Challenge 8 failed")
assert(isRotated(input1: "abcde", input2: "cdeab") == true, "Challenge 8 failed")
assert(isRotated(input1: "abcde", input2: "abced") == false, "Challenge 8 failed")
assert(isRotated(input1: "abc", input2: "a") == false, "Challenge 8 failed")



