import UIKit
"""
Challenge 10: Vowels and consonants
Difficulty: Tricky Given a string in English, return a tuple containing the number of vowels and consonants.
Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
Sample input and output
•    The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.  
•    The input “Mississippi” should return 4 vowels and 7 consonants.
"""

func challenge10(input: String) -> (Int, Int){
    var consonants : Set = Set(Array("abcdefghijklmnopqrstuvwxyz"))
    consonants.subtract((Set(Array("aeiou"))))
    var numOfVowels : Int = 0
    var numOfConsonants : Int = 0
    for letter in input.replacingOccurrences(of: " ", with: "").lowercased() {
        switch letter {
        case "a":
            numOfVowels += 1
        case "e":
            numOfVowels += 1
        case "i":
            numOfVowels += 1
        case "o":
            numOfVowels += 1
        case "u":
            numOfVowels += 1
        default:
            if consonants.contains(letter){
                numOfConsonants += 1
            }
        }
    }
    return (numOfVowels, numOfConsonants)
}
challenge10(input: "Swift Coding Challenges")
