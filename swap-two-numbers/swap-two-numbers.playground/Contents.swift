import UIKit

"""
Challenge 19: Swap two numbers
Difficulty: Easy Swap two positive variable integers, a and b, without using a temporary variable.
Sample input and output
• Before running your code a should be 1 and b should be 2; afterwards, b should be 1 and a should be 2.
"""

var a : Int = 1
var b : Int = 2

var challenge19 : (Int, Int) -> (Int, Int) = { (_ a: Int,_ b: Int) in
    (b, a)
}

func challenge19a(_ a: inout Int, _ b: inout Int){
    a = a + b
    b = a - b
    a = a - b
}

print("Before swap: a: \(a)")
print("Before swap: b: \(b)")
(a, b) = challenge19(a, b)
print("After swap: a: \(a)")
print("After swap: b: \(b)")

challenge19a(&a, &b)

print("After swap: a: \(a)")
print("After swap: b: \(b)")
