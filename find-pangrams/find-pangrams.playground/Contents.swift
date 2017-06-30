import UIKit

/* Challenge 9: Find pangrams
 Difficulty: Tricky
 Write a function that returns true if it is given a string that is an English pangram, ignoring
 letter case.
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 Sample input and output
 • The string “The quick brown fox jumps over the lazy dog” should return true.
    
 • The string “The quick brown fox jumped over the lazy dog” should return false, because it’s missing the S.
Hints:
 Hint #1: Make sure you start by collapsing case using something like lowercased().
 Hint #2: You can compare letters using >, >=, and so on.
 Hint #3: If you remove duplicates and non-alphabetic characters, the remaining string should add up to 26 letters.
 */

func challenge9(str: String) -> Bool {
    return Set(str.components(separatedBy:" ").joined().lowercased().characters).count == 26
}

print(challenge9(str: "The quick brown fox jumps over the lazy dog"))