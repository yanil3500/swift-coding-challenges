import UIKit
"""
Challenge 14: String permutations
Difficulty: Taxing Write a function that prints all possible permutations of a given input string.
Tip: A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.
Sample input and output
•    The string “a” should print “a”.  
•    The string “ab” should “ab”, “ba”.  
•    The string “abc” should print “abc”, “acb”, “bac”, “bca”, “cab”, “cba”.  
•    The string “wombat” should print 720 permutations.
"""
func challenge14(input: String, current: String = ""){
    let length : Int = input.count
    let anArray = Array(input)
    if length == 0 {
        print(current)
    } else {
        //Loop through every character
        for i in 0..<length{
            //Get the letters before
            let left : String = String(anArray[0..<i])
            
            //Get the letters after
            let right : String = String(anArray[i + 1..<length])
            
            //Put those two together and carry on
            challenge14(input: left + right, current: current + String(anArray[i]))
        }
    }
}

challenge14(input: "wombat")
