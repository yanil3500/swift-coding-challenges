import UIKit
"""
Challenge 11: Three different letters
Difficulty: Tricky 

Write a function that accepts two strings, and returns true if they are identical in length but
have no more than three different letters, taking case and string order into account.
Sample input and output
•    The strings “Clamp” and “Cramp” would return true, because there is one letter difference.  
•    The strings “Clamp” and “Crams” would return true, because there are two letter differences.  
•    The strings “Clamp” and “Grans” would return false, because there are four letter differences.  
•    The strings “Clamp” and “Clam” would return false, because they are different lengths.  
•    The strings “clamp” and “maple” should return false. Although they differ by only one  letter, the letters that match are in different positions.
"""

func challenge11(s1: String, s2: String) -> Bool {
    var difference : Int = 0
    if s1.count > s2.count { return false }
    for i in stride(from: 0, to: s1.count, by: 1){
        if Array(s1)[i] != Array(s2)[i] {
            difference += 1
        }
        if difference > 3 { return false }
    }
    print("Difference: \(difference)")
    return true
}

challenge11(s1:"Clamp", s2:"Grans")
