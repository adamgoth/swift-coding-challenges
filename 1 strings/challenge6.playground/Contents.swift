//: Playground - noun: a place where people can play

/*
Challenge 6: Remove duplicate letters from a string
Difficulty: Easy
Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.
Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.
Sample input and output
• The string “wombat” should print “wombat”.
• The string “hello” should print “helo”.
• The string “Mississippi” should print “Misp”.
*/

func removeDuplicates(input: String) -> String {
    var usedChars = [Character]()
    for char in input.characters {
        if !usedChars.contains(char) {
            usedChars.append(char)
        }
    }
    return String(usedChars)
}

assert(removeDuplicates(input: "wombat") == "wombat", "Challenge 6 failed")
assert(removeDuplicates(input: "hello") == "helo", "Challenge 6 failed")
assert(removeDuplicates(input: "Mississippi") == "Misp", "Challenge 6 failed")
