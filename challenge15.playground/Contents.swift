//: Playground - noun: a place where people can play

/*
 Challenge 15: Reverse the words in a string
 Difficulty: Taxing
 Write a function that returns a string with each of its words reversed but in the original order, without using a loop.
 Sample input and output
 • The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.
 • The string “The quick brown fox” should return “ehT kciuq nworb xof”.
*/

import UIKit

func reverseWords(input: String) -> String {

//  one-liner solution
    
    return input.components(separatedBy: .whitespaces).map({ String($0.characters.reversed()) }).joined(separator: " ")
    
//  first attempt

//    let words = input.components(separatedBy: .whitespaces)
//    var reversed = [String]()
//    
//    for word in words {
//        reversed.append(String(word.characters.reversed()))
//    }
//    
//    return reversed.joined(separator: " ")
    
}

assert(reverseWords(input: "Swift Coding Challenges") == "tfiwS gnidoC segnellahC", "Challenge 15 failed")
assert(reverseWords(input: "The quick brown fox") == "ehT kciuq nworb xof", "Challenge 15 failed")
