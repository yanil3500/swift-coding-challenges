import UIKit
"""
Challenge 22: Binary reverse
Difficulty: Tricky 

Create a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded
so that it holds precisely eight binary digits.
Tip: When you get the binary representation of a number, Swift will always use as few bits as possible – make sure you pad to eight binary digits before reversing.
Sample input and output
•    The number 32 is 100000 in binary, and padded to eight binary digits that’s 00100000. Reversing that binary sequence gives 00000100, which is 4. So, when given the input 32 your function should return 4.  
"""

var challenge22 : (Int) -> Int = {
    (_ number : Int) -> Int in
    var binaryRepr : Array = Array(String(repeating: "0", count: 8 - String(number, radix: 2).count) + String(number, radix: 2)).reversed()
    var binary : [Int] = [128, 64, 32, 16, 8, 4, 2, 1]
    var result : Int = 0
    for i in stride(from: binaryRepr.count - 1, through: 0, by: -1) {
        if binaryRepr[i] == "1"{
            result += binary[i]
        }
    }
    return result
}

print(challenge22(41))
