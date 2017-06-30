import UIKit
"""
Challenge 15: Reverse the words in a string
Difficulty: Taxing Write a function that returns a string with each of its words reversed but in the original order,
without using a loop.
Sample input and output
•    The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.  
•    The string “The quick brown fox” should return “ehT kciuq nworb xof”. 
"""
func challenge15(str: String) -> String {
    let reversedArr = Array(str)
    var reverse : String = ""
    for i in stride(from: str.count - 1, through: 0, by: -1){
        
        reverse.append(reversedArr[i])
    }
    print(reverse)
    return ""
}
challenge15(str: "The quick brown fox")
