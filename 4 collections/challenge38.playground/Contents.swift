//: Playground - noun: a place where people can play

/*
Challenge 38: Find N smallest
Difficulty: Easy
Write an extension for all collections that returns the N smallest elements as an array, sorted
smallest first, where N is an integer parameter.
Sample input and output
• The code [1, 2, 3, 4].challenge38(count: 3) should return [1, 2, 3].
    • The code ["q", "f", "k"].challenge38(count: 10) should return [“f”,
“k”, “q”].
• The code [256, 16].challenge38(count: 3) should return [16, 256].
    • The code [String]().challenge38(count: 3) should return an empty
array.
*/

import UIKit

extension Collection where Iterator.Element: Comparable {
    func challenge38(count: Int) -> [Iterator.Element] {
        return Array(self.sorted().prefix(count))
    }
}

[1, 2, 3, 4].challenge38(count: 3)
["q", "f", "k"].challenge38(count: 10)
[256, 16].challenge38(count: 3)
[String]().challenge38(count: 3)