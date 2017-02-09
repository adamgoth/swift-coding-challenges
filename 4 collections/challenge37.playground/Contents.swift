//: Playground - noun: a place where people can play

/*
 Challenge 37: Count the numbers
 Difficulty: Easy
 Write an extension for collections of integers that returns the number of times a specific digit appears in any of its numbers.
 Sample input and output
 • The code [5, 15, 55, 515].challenge37(count: "5") should return 6.
 • The code [5, 15, 55, 515].challenge37(count: "1") should return 2.
 • The code [55555].challenge37(count: "5") should return 5.
 • The code [55555].challenge37(count: "1") should return 0.
*/

import UIKit

extension Collection {
    func challenge37(count: String) -> Int {
        return self.reduce("", { $0 + String(describing: $1) }).characters.filter { String($0) == count }.count
    }
}

assert([5, 15, 55, 515].challenge37(count: "5") == 6, "Challenge 37 failed")
assert([5, 15, 55, 515].challenge37(count: "1") == 2, "Challenge 37 failed")
assert([55555].challenge37(count: "5") == 5, "Challenge 37 failed")
assert([55555].challenge37(count: "1") == 0, "Challenge 37 failed")