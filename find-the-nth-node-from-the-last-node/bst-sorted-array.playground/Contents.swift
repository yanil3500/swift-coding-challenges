//: Playground - noun: a place where people can play

import UIKit

class BSTNode<Element : Hashable>{
    var key : Int
    var value : Element
    var left: BSTNode<Element>?
    var right : BSTNode<Element>?
    init(key: Int, value: Element) {
        self.key = "\(key)".hashValue
        self.value = value
    }
}

extension BSTNode: Hashable {
    var hashValue : Int {
        return "\(key)\(value)".hashValue
    }
    final class func ==(lhs: BSTNode, rhs: BSTNode) -> Bool {
        return lhs.key == rhs.key && lhs.value == rhs.value
    }
}

class BST<Element: Hashable>{
    fileprivate var root : BSTNode<Element>?
    var length : Int = 0
    var isEmpty : 
}
