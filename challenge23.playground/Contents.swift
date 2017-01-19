//: Playground - noun: a place where people can play

/*
 Challenge 23: Integer disguised as string
 Difficulty: Tricky
 Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.
 Sample input and output
 • The input “01010101” should return true.
 • The input “123456789” should return true.
 • The letter “9223372036854775808” should return true.
 • The letter “1.01” should return false; “.” is not a number.
*/

import UIKit

func allIntegers(input: String) -> Bool {
    return input.characters.reduce(true, { $0 && (Int(String($1)) != nil) })
    
    //alternative
    
    //return input.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
}

assert(allIntegers(input: "01010101") == true, "Challenge 23 failed")
assert(allIntegers(input: "123456789") == true, "Challenge 23 failed")
assert(allIntegers(input: "9223372036854775808") == true, "Challenge 23 failed")
assert(allIntegers(input: "1.01") == false, "Challenge 23 failed")