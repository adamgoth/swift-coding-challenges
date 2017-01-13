//: Playground - noun: a place where people can play

/*
 Challenge 14: String permutations
 Difficulty: Taxing
 Write a function that prints all possible permutations of a given input string.
 Tip: A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.
 Sample input and output
 • The string “a” should print “a”.
 • The string “ab” should “ab”, “ba”.
 • The string “abc” should print “abc”, “acb”, “bac”, “bca”, “cab”, “cba”.
 • The string “wombat” should print 720 permutations.
*/

import UIKit

func permutate(string: String, current: String = "") {
    let length = string.characters.count
    let stringArray = Array(string.characters)
    
    if (length == 0) {
        print(current)
       // print("******")
    //} else {
        //print(current)
    }
    
    for i in 0..<length {
        let left = String(stringArray[0..<i])
        
        let right = String(stringArray[i+1..<length])
        
        permutate(string: left + right, current: current + String(stringArray[i]))
    }

}

permutate(string: "a")
permutate(string: "ab")
permutate(string: "abc")
permutate(string: "wombat")
