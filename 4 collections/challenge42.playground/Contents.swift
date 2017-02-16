//: Playground - noun: a place where people can play

/*
Challenge 42: Recreate index(of:)
Difficulty: Easy
Write an extension for all collections that reimplements the index(of:) method.
Tip: This is one of the easiest standard library methods to reimplement, so please give it an especially good try before reading any hints.
Sample input and output
• The code [1, 2, 3].challenge42(indexOf: 1) should return 0.
    • The code [1, 2, 3].challenge42(indexOf: 3) should return 2.
        • The code [1, 2, 3].challenge42(indexOf: 5) should return nil.
*/

import UIKit

extension Collection where Iterator.Element: Equatable {
    func challenge42(indexOf input: Iterator.Element) -> Int? {
        for (i, item) in self.enumerated() {
            if item == input {
                return i
            }
        }
        
        return nil
    }
}

assert([1, 2, 3].challenge42(indexOf: 1) == 0, "Challenge 42 failed")
assert([1, 2, 3].challenge42(indexOf: 3) == 2, "Challenge 42 failed")
assert([1, 2, 3].challenge42(indexOf: 5) == nil, "Challenge 42 failed")