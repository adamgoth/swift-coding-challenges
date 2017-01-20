//
//  main.swift
//  challenge27
//
//  Created by Adam Goth on 1/20/17.
//  Copyright © 2017 Adam Goth. All rights reserved.
//

//: Playground - noun: a place where people can play

/*
 Challenge 27: Print last lines
 Difficulty: Easy
 Write a function that accepts a filename on disk, then prints its last N lines in reverse order, all on a single line separated by commas.
 Sample input and output
 Here is your test input file:
 Antony And Cleopatra
 Coriolanus
 Cymbeline
 Hamlet
 Julius Caesar
 King Lear
 Macbeth
 Othello
 Twelfth Night
 • If asked to print the last 3 lines, your code should output “Twelfth Night, Othello, Macbeth”.
 • If asked to print the last 100 lines, your code should output “Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony and Cleopatra”.
 • If asked to print the last 0 lines, your could should print nothing.
 */

import Foundation

func printLastLines(filename: String, numberOfLines: Int) {
    guard let contents = try? String(contentsOfFile: filename) else { return }
    var lines = contents.components(separatedBy: .newlines).filter { $0 != "" }
    guard lines.count > 0 else { return }
    lines.reverse()
    for i in 0..<min(numberOfLines, lines.count) {
        print(lines[i])
    }
}

printLastLines(filename: "/Users/apg/Desktop/input.txt", numberOfLines: 3)
printLastLines(filename: "/Users/apg/Desktop/input.txt", numberOfLines: 100)
printLastLines(filename: "/Users/apg/Desktop/input.txt", numberOfLines: 0)


