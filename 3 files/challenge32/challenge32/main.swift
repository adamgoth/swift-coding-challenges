//
//  main.swift
//  challenge32
//
//  Created by Adam Goth on 1/25/17.
//  Copyright © 2017 Adam Goth. All rights reserved.
//

/*
 Challenge 32: Word frequency
 Difficulty: Tricky
 Write a function that accepts a filename on disk, loads it into a string, then returns the frequency of a word in that string, taking letter case into account. How you define “word” is worth considering carefully.
 Sample input and output
 • A file containing “Hello, world!” should return 1 for “Hello”
 • A file containing “Hello, world!” should return 0 for “Hello,” – note the comma at the
 end.
 • A file containing “The rain in Spain falls mainly on the plain” should return 1 for
 Spain, and 1 for “in”; the “in” inside rain, Spain, mainly, and plain does not count
 because it’s not a word by itself.
 • A file containing “I’m a great coder” should return 1 for “I’m”.
*/

import Foundation

func wordFrequency(pathToFile: String) {
    guard let input = try? String(contentsOfFile: pathToFile) else { return print("Could not get data from file") }
    var nonletters = CharacterSet.letters.inverted
    nonletters.remove("'")
    let words = input.components(separatedBy: nonletters)
    let wordSet = NSCountedSet(array: words)
    var wordCountArray = [(String, Int)]()
    for word in wordSet {
        if let wordString = word as? String {
            wordCountArray.append((wordString, wordSet.count(for: word)))
        } else {
            print("Could not convert word to string")
        }
    }
    for (word, count) in wordCountArray.sorted(by: { $0.1 > $1.1 }) {
        if word != "" {
            print("\(word): \(count)")
        }
    }
}

wordFrequency(pathToFile: "/Users/apg/Desktop/trump_inauguration_speech.txt")
//wordFrequency(pathToFile: "/Users/apg/Desktop/input.txt")
