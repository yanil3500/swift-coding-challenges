import UIKit

"""
Challenge 18: Recreate the pow() function
Difficulty: Easy Create a function that accepts positive two integers, and raises the first to the power of the
second. Tip: If you name your function myPow() or challenge18(), you’ll be able to use the
built-in pow() for your tests. The built-in pow() uses doubles, so you’ll need to typecast.
Sample input and output
    •    The inputs 4 and 3 should return 64, i.e. 4 multiplied by itself 3 times.  
    •    The inputs 2 and 8 should return 256, i.e. 2 multiplied by itself 8 times.  Hints  Hint #1: You don’t need any hints to solve this one. Hint #2: Oh, alright: here’s a hint: you can either use a loop or, if you’re feeling fancy, use a  recursive function.  Hint #3: Here’s another: you could use guard or precondition() to ensure both numbers are positive.
"""
func pow(base: Double, power: Double) -> Double {
    guard power > 0, base > 0 else { return 0 }
    var result : Double = base
    for _ in 1..<Int(power) {
        result = result * base
    }
    
    return result
}

func powA(base: Double, power: Double) -> Double {
    guard power > 0, base > 0 else { return 0 }
    
    if power == 1 { return base }
    
    return base * powA(base: base, power: power - 1)
}
print(pow(base:2, power:2))
print(powA(base: 2, power: 2))

