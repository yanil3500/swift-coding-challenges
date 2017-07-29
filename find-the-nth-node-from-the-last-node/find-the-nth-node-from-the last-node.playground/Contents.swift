//: Playground - noun: a place where people can play

import UIKit

class Node<Element> {
    var data : Element
    var next : Node?=nil
    init(withData data: Element) {
        self.data = data
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        return "\(data)"
    }
}

class SLL<Element>{
    fileprivate var head : Node<Element>?
    fileprivate var length : Int = 0
}

extension SLL: CustomStringConvertible {
    var description : String {
        var str : String = ""
        var curr : Node? = head
        while let currVal : Element = curr?.data, curr != nil {
            str += "(\(currVal)) -> "
            curr = curr?.next
        }
        str += "nil"
        return str
    }
}

extension SLL {
    func prepend(newData data: Element){
        if head == nil {
            head = Node(withData: data)
            length += 1
        } else {
            let newNode : Node? = Node(withData: data)
            newNode?.next = head
            head = newNode
            length += 1
        }
    }
    
    func remove(afterIndex index: Int) -> Element? {
        if head != nil {
            if index == 0 {
                guard let deletedVal : Element = head?.data else { return nil }
                head = head?.next
                length -= 1
                return deletedVal
            }
            var prev : Node<Element>?
            var curr : Node? = head
            var count : Int = 0
            while count < index && curr?.next != nil {
                prev = curr
                curr = curr?.next
                count += 1
            }
            prev?.next = curr?.next
            curr?.next = nil
            guard let deletedVal : Element = curr?.data else { return nil }
            length -= 1
            return deletedVal
        }
        return nil
    }
}


var a_list = SLL<String>()
for letter in "mo' money, more' problems".components(separatedBy: " "){
    a_list.prepend(newData: letter)
}

print(a_list)
print(a_list.remove(afterIndex: 1))
print(a_list)







