//: Playground - noun: a place where people can play

/*
 Challenge 29: Documents directory
 Difficulty: Easy
 Write a function that returns a URL to the user’s documents directory.
 Sample input and output
 • Your function should need no input, and return a URL pointing to /Users/ yourUserName/Documents on macOS, and /path/to/container/Documents on iOS.
*/

import UIKit

func returnDocumentsDirectory() -> URL? {
    return try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
}

returnDocumentsDirectory()