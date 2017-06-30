import UIKit

/* 
 Challenge 5: Count the characters
 Difficulty: Easy
 Write a function that accepts a string, and returns how many times a specific character appears,
 taking case into account.
 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.
 Sample input and output
 •	The letter “a” appears twice in “The rain in Spain”.

 •	The letter “i” appears four times in “Mississippi”.

 •	The letter “i” appears three times in “Hacking with Swift”.
 */

func challenge5(str: String, a_letter: Character) -> Int {
    var dict = [Character : Int]()
    for letter in str.characters {
        if !dict.keys.contains(letter){
            dict[letter] = 1
        } else {
            dict[letter] = dict[letter]! + 1
        }
    }
    
    return dict[a_letter]!
}

print(challenge5(str:"Hacking with Swift", a_letter: "i"))