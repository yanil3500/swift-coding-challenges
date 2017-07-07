import UIKit
"""
Challenge 20: Number is prime
Difficulty: Tricky Write a function that accepts an integer as its parameter and returns true if the number is prime.
Tip: A number is considered prime if it is greater than one and has no positive divisors other than 1 and itself.
Sample input and output
    •    The number 11 should return true.  
    •    The number 13 should return true.  
    •    The number 4 should return false.  
    •    The number 9 should return false.  
    •    The number 16777259 should return true.
"""
var challenge20 : (Int) -> Bool = { (_ a: Int) in
    for i in 2...a-1 {
        if a % i == 0 {
            return false
        }
    }
    return true
}
var sqrta : (Int) -> Int = { (_ a: Int) in
"""
Find floor of square root is to try all numbers starting from 1. For every tried number i, if i*i is smaller than x, then increment
i. We stop when i*i becomes more than or equal to x.
"""
    //base case
    if a == 0 || a == 1 {
        return a
    }
    var i : Int = 1
    var result : Int = 1
    
    while result < a {
        if result == a {
            return result
        }
        i += 1
        result = i * i
    }
    return i - 1
}
var challenge20a : (Int) -> Bool = { (_ number: Int) in
    guard number >= 2 else { return false }
    guard number != 2 else { return true }
    
    let max : Int = sqrta(number)
    for i in 2...max {
        if number % i == 0 {
            return false
        }
    }
    return true
}
print(challenge20a(16777259))
