//: Playground - noun: a place where people can play

/*
 Challenge 12: Find longest prefix
 Difficulty: Tricky
 Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.
 Sample input and output
 • The string “swift switch swill swim” should return “swi”.
 • The string “flip flap flop” should return “fl”.
*/

import UIKit

func longestPrefix(input: String) -> String {
    let words = input.components(separatedBy: .whitespaces)
    guard let first = words.first else { return "" }
    var currentPrefix = ""
    var finalPrefix = ""
    for character in first.characters {
        currentPrefix.append(character)
        if words.reduce(true, { $0 && $1.hasPrefix(currentPrefix) }) {
            finalPrefix = currentPrefix
        }
    }
    return finalPrefix
}

//solution without hasPrefix()

//func longestPrefix(input: String) -> String {
//    var prefix = [Character]()
//    let words = input.components(separatedBy: .whitespaces)
//    let shortestWord = words.min { $0.characters.count < $1.characters.count }
//    if let shortestWord = shortestWord {
//        for (index, letter) in shortestWord.characters.enumerated() {
//            let i = shortestWord.index(shortestWord.startIndex, offsetBy: index)
//            if words.reduce(true, { $0 && $1.characters[i] == letter }) {
//                prefix.append(letter)
//            } else {
//                return String(prefix)
//            }
//        }
//    }
//    return String(prefix)
//}

let start = Date()
assert(longestPrefix(input: "swift switch swill swim") == "swi", "Challenge 12 failed")
assert(longestPrefix(input: "flip flap flop") == "fl", "Challenge 12 failed")
assert(longestPrefix(input: "tiny ten ticker") == "t", "Challenge 12 failed")
let end = Date()
print("Took \(end.timeIntervalSince(start))")