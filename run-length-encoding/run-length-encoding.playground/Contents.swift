import UIKit
"""
Challenge 13: Run-length encoding
Difficulty: Taxing Write a function that accepts a string as input, then returns how often each letter is repeated in
a single run, taking case into account.
Tip: This approach is used in a simple lossless compression technique called run-length encoding.
Sample input and output
•    The string “aabbcc” should return “a2b2c2”.  
•    The strings “aaabaaabaaa” should return “a3b1a3b1a3”  
•    The string “aaAAaa” should return “a2A2a2”
"""
func challenge13(input: String) -> String {
    var runLength : String = ""
    var counter : Int = 0
    var previous : String = ""
    for letter in input {
        if String(letter) != previous {
            if counter > 0 {
                runLength += "\(counter)"
                counter = 0
            }
            runLength.append(letter)
        }
        counter += 1
        previous = String(letter)
        
    }
    runLength += "\(counter)"
    print(runLength)
    return runLength
}

challenge13(input:"aabbcc")

