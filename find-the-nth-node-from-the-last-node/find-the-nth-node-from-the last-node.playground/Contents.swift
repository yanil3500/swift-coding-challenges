//: Playground - noun: a place where people can play

import UIKit

class Node<Element: Hashable> {
    var data : Element
    var next : Node?=nil
    init(withData data: Element) {
        self.data = data
    }
}

extension Node: Hashable {
    var hashValue : Int {
        return "\(data)".hashValue
    }
    
    final class func ==(lhs: Node, rhs: Node) -> Bool {
        return lhs.data == rhs.data
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        return "\(data)"
    }
}

class SLL<Element: Hashable>{
    fileprivate var head : Node<Element>?
    fileprivate var length : Int = 0
    fileprivate var largestIndex : Int = 0
    var isEmpty : Bool {
        return length == 0
    }
}

extension SLL: CustomStringConvertible {
    var description : String {
        var str : String = ""
        var curr : Node<Element>? = head
        while let currVal : Element = curr?.data, curr != nil {
            str += "(\(currVal)) -> "
            curr = curr?.next
        }
        str += "nil"
        return str
    }
}

extension SLL {
    func append(newData data: Element){
        if head == nil {
            head = Node(withData: data)
            length += 1
        } else {
            var curr : Node? = head
            while curr?.next != nil {
                curr = curr?.next
            }
            curr?.next = Node(withData: data)
            length += 1
            largestIndex += 1
        }
    }
    
    func remove(afterIndex index: Int) -> Element? {
        if !isEmpty {
            if index == 0 {
                guard let deletedVal : Element = head?.data else { return nil }
                head = head?.next
                length -= 1
                largestIndex -= 1
                return deletedVal
            }
            if index < largestIndex {
                var prev : Node<Element>?
                var curr : Node? = head
                var count : Int = 0
                while count <= index && curr?.next != nil {
                    prev = curr
                    curr = curr?.next
                    count += 1
                }
                prev?.next = curr?.next
                curr?.next = nil
                guard let deletedVal : Element = curr?.data else { return nil }
                length -= 1
                largestIndex -= 1
                return deletedVal
            }
        }
        return nil
    }
    
    func remove(beforeIndex index: Int) -> Element? {
        if !isEmpty && index >= 0 {
            if index - 1 == 0 {
                guard let deletedVal : Element = head?.data else { return nil }
                head = head?.next
                length -= 1
                largestIndex -= 1
                return deletedVal
            }
            
            if index <= largestIndex {
                var prev : Node<Element>?
                var curr : Node? = head
                var count : Int = 0
                while count < index-1 && curr?.next != nil {
                    prev = curr
                    curr = curr?.next
                    count += 1
                }
                prev?.next = curr?.next
                curr?.next = nil
                guard let deletedVal : Element = curr?.data else { return nil }
                length -= 1
                largestIndex -= 1
                return deletedVal
            }
        }
        return nil
    }
    
    func remove(atIndex index: Int) -> Element? {
        if !isEmpty && index >= 0 {
            if index == 0 {
                guard let deletedVal : Element = head?.data else { return nil }
                head = head?.next
                length -= 1
                largestIndex -= 1
                return deletedVal
            }
            
            if index <= largestIndex {
                var prev : Node<Element>?
                var curr : Node? = head
                var count : Int = 0
                while count != index && curr?.next != nil {
                    prev = curr
                    curr = curr?.next
                    count += 1
                }
                
                prev?.next = curr?.next
                curr?.next = nil
                guard let deletedVal : Element = curr?.data else { return nil }
                length -= 1
                largestIndex -= 1
                return deletedVal
            }
        }
        return nil
    }
    
    func contains(forData data: Element) -> Bool {
        return search(currentNode: head, forData:data)
    }
    
    fileprivate func search(currentNode node: Node<Element>?, forData data: Element) -> Bool {
        if let val : Element = node?.data, val == data {
            return true
        }
        if node == nil {
            return false
        }
        
        return search(currentNode: node?.next, forData: data)
    }

}


var a_list = SLL<String>()
for letter in "the quick brown fox, jumped over the lazy dog.".components(separatedBy: " "){
    a_list.append(newData: letter.lowercased())
}






func findTheNthToLastNode<Element>(nthToLastNode list: SLL<Element>?, n: Int) -> Node<Element>? {
    if let length : Int = list?.length, list?.head == nil || n > length {
        return nil
    }
    guard var count : Int = list?.length else { return nil }
    var prev : Node? = list?.head
    var curr : Node? = list?.head
    while curr?.next != nil, count != n {
        if count > n {
            prev = prev?.next
        }
        curr = curr?.next
        count -= 1
    }
    return prev
}




print(a_list)

var result = findTheNthToLastNode(nthToLastNode: a_list, n: 2)

print(result)