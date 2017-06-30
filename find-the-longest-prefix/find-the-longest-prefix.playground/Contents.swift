import UIKit
"""
Challenge 12: Find longest prefix
Difficulty: Tricky Write a function that accepts a string of words with a similar prefix, separated by spaces, and
returns the longest substring that prefixes all words.
Sample input and output
•    The string “swift switch swill swim” should return “swi”.  
•    The string “flip flap flop” should return “fl”. 
"""
func challenge12(input: String) -> String{
    var str : [String] = input.components(separatedBy: " ")
    guard let firstWord = str.first else { return "" }
    var bestPrefix : String = ""
    var currentPrefix : String = ""
    for letter in firstWord {
        currentPrefix.append(letter)
        for word in str {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    return bestPrefix
}

challenge12(input: "flip flap flop")
