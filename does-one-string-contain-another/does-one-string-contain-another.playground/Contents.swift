import UIKit

/*
 Challenge 4: Does one string contain another?
 Difficulty: Easy
 Write your own version of the contains() method on String that ignores letter case, and
 without using the existing contains() method.
 Sample input and output
 •	The code "Hello, world".fuzzyContains("Hello") should return true.
    
 •	The code "Hello, world".fuzzyContains("WORLD") should return true.
        
 •	The code "Hello, world".fuzzyContains("Goodbye") should return
false.
Hints
Hint #1: You should write this as an extension to String.
 */

extension String {
    func fuzzyContains(str: String) -> Bool {
        return self.range(of: str, options:.caseInsensitive) != nil
    }
}

print("Hello, world".fuzzyContains(str:"Hello"))