//: Playground - noun: a place where people can play

/*
 Challenge 10: Vowels and consonants
 Difficulty: Tricky
 Given a string in English, return a tuple containing the number of vowels and consonants.
 Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
 Sample input and output
 • The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 • The input “Mississippi” should return 4 vowels and 7 consonants.
*/

import UIKit

func vowelsAndConsonants(input: String) -> (Int, Int) {
    let vowels = "aeiou".characters
    let consonants = "bcdfghjklmnpqrstvwxyz".characters
    let vowelCount = input.lowercased().characters.filter { vowels.contains($0) }.count
    let consonantCount = input.lowercased().characters.filter { consonants.contains($0) }.count
    return (vowelCount, consonantCount)
}

assert(vowelsAndConsonants(input: "Swift Coding Challenges") == (6, 15), "Challenge 10 failed")
assert(vowelsAndConsonants(input: "Mississippi") == (4, 7), "Challenge 10 failed")
