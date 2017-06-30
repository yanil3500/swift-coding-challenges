import UIKit
/*
 Challenge 7: Condense whitespace
 Difficulty: Easy
 Write a function that returns a string with any consecutive spaces replaced with a single space.
 Sample input and output
 I’ve marked spaces using “[space]” below for visual purposes:
	•	The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
 
	•	The string “[space][space][space][space]a” should return “[space]a”.
 
	•	The string “abc” should return “abc”.
 */

func challenge7(str: String) -> String {
    var aNewStr : String = ""
    var seenSpace : Bool = false
    
    for letter in str.characters{
        if letter == " "{
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        aNewStr += "\(letter)"
    }
    return aNewStr
}

func challenge7a(str: String) -> String {
    return str.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
}

print(challenge7a(str: "a   b   c"))
