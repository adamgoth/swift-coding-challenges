//: Playground - noun: a place where people can play

/*
 Challenge 11: Three different letters
 Difficulty: Tricky
 Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.
 Sample input and output
 • The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
 • The strings “Clamp” and “Crams” would return true, because there are two letter differences.
 • The strings “Clamp” and “Grams” would return true, because there are three letter differences.
 • The strings “Clamp” and “Grans” would return false, because there are four letter differences.
 • The strings “Clamp” and “Clam” would return false, because they are different lengths.
 • The strings “clamp” and “maple” should return false. Although they differ by only one letter, the letters that match are in different positions.
*/

import UIKit

func threeDifferentLetters(input1: String, input2: String) -> Bool {
    guard input1.characters.count == input2.characters.count else { return false }
    var nonMatches = 0
    for (i, letter) in input1.characters.enumerated() {
        let index = input1.index(input1.startIndex, offsetBy: i)
        if letter != input2.characters[index] {
            nonMatches += 1
        }
        guard nonMatches < 4 else { return false }
    }
    return true
}

let start = Date()
assert(threeDifferentLetters(input1: "Clamp", input2: "Cramp") == true, "Challenge 11 failed")
assert(threeDifferentLetters(input1: "Clamp", input2: "Crams") == true, "Challenge 11 failed")
assert(threeDifferentLetters(input1: "Clamp", input2: "Grams") == true, "Challenge 11 failed")
assert(threeDifferentLetters(input1: "Clamp", input2: "Grans") == false, "Challenge 11 failed")
assert(threeDifferentLetters(input1: "Clamp", input2: "Clam") == false, "Challenge 11 failed")
assert(threeDifferentLetters(input1: "clamp", input2: "maple") == false, "Challenge 11 failed")
let end = Date()
print("Took \(end.timeIntervalSince(start)) to run")