//: Playground - noun: a place where people can play

/*
 Challenge 21: Counting binary ones
 Difficulty: Tricky
 Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.
 Sample input and output
 • The number 12 is 1100 in binary, so it has two 1s. The next highest number with that many 1s is 17, which is 10001. The next lowest is 10, which is 1010.
 • The number 28 is 11100 in binary, so it has three 1s. The next highest number with that many 1s is 35, which is 100011. The next lowest is 26, which is 11010.
*/

func binaryOnes(input: Int) -> (Int?, Int?) {
    
    func ones(in number: Int) -> Int {
        return String(number, radix: 2).characters.filter( { $0 == "1" }).count
    }
    
    var lowest: Int? = nil
    var highest: Int? = nil
    
    //find highest
    var i = input + 1
    while highest == nil {
        if ones(in: i) == ones(in: input) {
            highest = i
            break;
        }
        i += 1
    }
    
    //find lowest
    for i in Array(0..<input).reversed() {
        if ones(in: i) == ones(in: input) {
            lowest = i
            break;
        }
    }
    

    return (highest, lowest)
}

binaryOnes(input: 12)
binaryOnes(input: 28)
