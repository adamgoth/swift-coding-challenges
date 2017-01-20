//: Playground - noun: a place where people can play

/*
Challenge 3: Do two strings contain the same characters?
Difficulty: Easy
Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
Sample input and output
• The strings “abca” and “abca” should return true.
• The strings “abc” and “cba” should return true.
• The strings “ a1 b2 ” and “b 1 a 2” should return true.
• The strings “abc” and “abca” should return false.
• The strings “abc” and “Abc” should return false.
• The strings “abc” and “cbAa” should return false.
*/

func challenge3(input1: String, input2: String) -> Bool {
    return input1.characters.sorted() == input2.characters.sorted()
}

assert(challenge3(input1: "abca", input2: "abca") == true, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "cba") == true, "Challenge 3 failed")
assert(challenge3(input1: " a1 b2 ", input2: "b 1 a 2") == true, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "abca") == false, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "Abc") == false, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "cbAa") == false, "Challenge 3 failed")