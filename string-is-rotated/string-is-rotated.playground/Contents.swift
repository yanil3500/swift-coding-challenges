import UIKit

/* 
 Challenge 8: String is rotated
 Difficulty: Tricky
 Write a function that accepts two strings, and returns true if one string is rotation of the other,
 taking letter case into account.
 Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
 Sample input and output
 •	The string “abcde” and “eabcd” should return true.
    
 •	The string “abcde” and “cdeab” should return true.
        
 •	The string “abcde” and “abced” should return false; this is not a string rotation.
            
 •	The string “abc” and “a” should return false; this is not a string rotation.
 */

func challenge8(str: String, rotated: String) -> Bool {
    guard str.characters.count == rotated.characters.count else { return false }
    return (str + str).contains(rotated)
}

print(challenge8(str: "abcde", rotated:"cdeab"))