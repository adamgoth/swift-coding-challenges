//: Playground - noun: a place where people can play

/*
 Challenge 5: Count the characters
 Difficulty: Easy
 Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.
 Sample input and output
 • The letter “a” appears twice in “The rain in Spain”.
 • The letter “i” appears four times in “Mississippi”.
 • The letter “i” appears three times in “Hacking with Swift”.
*/

func characterCount(input: String) -> Dictionary<Character, Int> {
    var dict: Dictionary<Character, Int> = [:]
    
    for char in input.characters {
        if dict[char] != nil {
            dict[char]! += 1
        } else {
            dict[char] = 1
        }
    }
    
    return dict
}

assert(characterCount(input: "The rain in Spain")["a"] == 2, "Challenge 5 failed")
assert(characterCount(input: "Mississippi")["i"] == 4, "Challenge 5 failed")
assert(characterCount(input: "Hacking with Swift")["i"] == 3, "Challenge 5 failed")