//: Playground - noun: a place where people can play

/*
 Challenge 40: Missing numbers in array
 Difficulty: Easy
 Create a function that accepts an array of unsorted numbers from 1 to 100 where zero or more
 numbers might be missing, and returns an array of the missing numbers.
 Sample input and output
 If your test array were created like this:
 Then your method should [7, 21, 26], because those are the numbers missing from the array.
*/

import UIKit

// B version is fastest

func missingNumbersA(array: [Int]) -> [Int] {
    
    let set = Set(1...100)
    let input = Set(array)
    return Array(set.symmetricDifference(input)).sorted()
    
}

func missingNumbersB(array: [Int]) -> [Int] {
    var missing = [Int]()

    for (i, num) in array.enumerated() {
        guard num < array.count else { break }
        if array[i] + 1 != array[i + 1] {
            missing.append(num + 1)
        }
    }
    
    return missing
}

func missingNumbersC(array: [Int]) -> [Int] {
    let correct = Array(1...100)
    let input = Set(array)
    var missing = [Int]()
    
    for num in correct {
        if !input.contains(num) {
            missing.append(num)
        }
    }
    
    return missing
}


var testArray = Array(1...100)
testArray.remove(at: 25)
testArray.remove(at: 20)
testArray.remove(at: 6)

let startA = Date()
print(missingNumbersA(array: testArray))
print(Date().timeIntervalSince(startA))

let startB = Date()
print(missingNumbersB(array: testArray))
print(Date().timeIntervalSince(startB))

let startC = Date()
print(missingNumbersC(array: testArray))
print(Date().timeIntervalSince(startC))