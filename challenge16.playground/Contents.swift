//: Playground - noun: a place where people can play

/*
 Challenge 16: Fizz Buzz
 Difficulty: Easy
 Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.
 Sample input and output
 • 1 should print “1”
 • 2 should print “2”
 • 3 should print “Fizz”
 • 4 should print “4”
 • 5 should print “Buzz”
 • 15 should print “Fizz Buzz”
*/

func fizzBuzz(input: Int) -> String {
    if input % 3 == 0 {
        if input % 5 == 0 {
            return "FizzBuzz"
        } else {
            return "Fizz"
        }
    } else if input % 5 == 0 {
        return "Buzz"
    } else {
        return String(input)
    }
}

assert(fizzBuzz(input: 1) == "1", "Challenge 16 failed")
assert(fizzBuzz(input: 2) == "2", "Challenge 16 failed")
assert(fizzBuzz(input: 3) == "Fizz", "Challenge 16 failed")
assert(fizzBuzz(input: 4) == "4", "Challenge 16 failed")
assert(fizzBuzz(input: 5) == "Buzz", "Challenge 16 failed")
assert(fizzBuzz(input: 15) == "FizzBuzz", "Challenge 16 failed")