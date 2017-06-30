import UIKit

/*
 Challenge 3: Do two strings contain the same characters?
 Difficulty: Easy
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
 Sample input and output
	•	The strings “abca” and “abca” should return true.
 
	•	The strings “abc” and “cba” should return true.
 
	•	The strings “ a1 b2 ” and “b 1 a 2” should return true.
 
	•	The strings “abc” and “abca” should return false.
 
	•	The strings “abc” and “Abc” should return false.
 
	•	The strings “abc” and “cbAa” should return false.
 */

func challenge3(inputOne: String, inputTwo: String) -> Bool {
    return Array(inputOne.characters).sorted() == Array(inputTwo.characters).sorted()
}

print(challenge3(inputOne: " a1 b2 ", inputTwo: "b 1 a 2"))