import UIKit
/* 
 Challenge 6: Remove duplicate letters from a string
 Difficulty: Easy
 Write a function that accepts a string as its input, and returns the same string just with
 duplicate letters removed.
 Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.
 Sample input and output
 •	The string “wombat” should print “wombat”.

 •	The string “hello” should print “helo”.

 •	The string “Mississippi” should print “Misp”.
 */

func challenge6(str: String) -> String {
    var noDuplicates = ""
    for letter in str.characters{
        if !noDuplicates.contains(String(letter)){
            noDuplicates += String(letter)
        }
    }
    return noDuplicates
}

print(challenge6(str: "hello"))
print(challenge6(str: "Mississippi"))