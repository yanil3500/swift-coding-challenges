import UIKit
"""
Challenge 21: Counting binary ones
Difficulty: Tricky
Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.
Sample input and output
•    The number 12 is 1100 in binary, so it has two 1s. The next highest number with that many 1s is 17, which is 10001. The next lowest is 10, which is 1010.  
•    The number 28 is 11100 in binary, so it has three 1s. The next highest number with that many 1s is 35, which is 100011. The next lowest is 26, which is 11010.
"""
var challenge21 : (Int) -> (Int?, Int?) = { (_ number: Int) in
    var binaryRepresentation : String = String(number, radix: 2)
    func ones(in number: Int) -> Int {
        let currentBinary : String = String(number, radix: 2)
        return currentBinary.filter {
            (val1: Character) -> Bool in
            val1 == "1"
        }.count
    }
    let targetOnes : Int = ones(in: number)
    var highest : Int? = 0
    var lowest : Int? = 0
    for i in number + 1...Int.max {
        if ones(in: i) == targetOnes {
            highest = i
            break
        }
    }
    
    for i in (0..<number).reversed(){
        if ones(in: i) == targetOnes {
            lowest = i
            break
        }
    }
    return (highest, lowest)
}
print(challenge21(12))
