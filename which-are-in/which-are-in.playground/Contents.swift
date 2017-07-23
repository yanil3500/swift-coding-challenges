//: Playground - noun: a place where people can play

import UIKit

/*
 Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.
 
 #Example 1: a1 = ["arp", "live", "strong"]
 
 a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
 
 returns ["arp", "live", "strong"]
 
 #Example 2: a1 = ["tarp", "mice", "bull"]
 
 a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
 
 returns []
 
 #Notes: Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.
 
 Beware: r must be without duplicates.
 */


func inArray(_ a1: Array<String>, _ a2: Array<String>) -> Array<String> {
    var set = Set<String>()
    
    return Array(set).sorted()
}