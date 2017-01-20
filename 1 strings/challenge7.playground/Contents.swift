//: Playground - noun: a place where people can play

/*
 Challenge 7: Condense whitespace
 Difficulty: Easy
 Write a function that returns a string with any consecutive spaces replaced with a single space.
 Sample input and output
 I’ve marked spaces using “[space]” below for visual purposes:
 • The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
 • The string “[space][space][space][space]a” should return “[space]a”.
 • The string “abc” should return “abc”.
 */

import UIKit

func condenseWhitespace(input: String) -> String {
    var output = [Character]()
    for char in input.characters {
        if !(char == " " && output.last == " ") {
            output.append(char)
        }
    }
    print(output.map({ String($0) }).joined())
    return output.map({ String($0) }).joined()
}

assert(condenseWhitespace(input: "a   b   c") == "a b c", "Challenge 7 failed")
assert(condenseWhitespace(input: "    a") == " a", "Challenge 7 failed")
assert(condenseWhitespace(input: "abc") == "abc", "Challenge 7 failed")