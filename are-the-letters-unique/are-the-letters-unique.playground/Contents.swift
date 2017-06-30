import UIKit
/*
Challenge 1: Are the letters unique?
Difficulty: Easy
Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
Sample input and output
    •	The string “No duplicates” should return true.
    
    •	The string “abcdefghijklmnopqrstuvwxyz” should return true.
        
    •	The string “AaBbCc” should return true because the challenge is case-sensitive.
            
    •	The string “Hello, world” should return false because of the double Ls and double Os.
 
 */

func challenge1(input: String) -> Bool {
    return Set(input.characters).count == input.characters.count
}

challenge1(input: "No duplicates") //should return true
challenge1(input: "abcdefghijklmnopqrstuvwkyz") //should return true
challenge1(input: "AaBbCc") // should return true
challenge1(input: "Hello, world") //should return false