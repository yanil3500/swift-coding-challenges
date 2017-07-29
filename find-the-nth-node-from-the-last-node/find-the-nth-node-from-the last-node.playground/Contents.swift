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
        } else {
            var newNode : Node? = Node(withData: data)
            newNode?.next = head
            head = newNode
        }
    }
}


var a_list = SLL<String>()
for letter in "mo' money, mo' problems".components(separatedBy: " "){
    a_list.prepend(newData: letter)
}

print(a_list)







