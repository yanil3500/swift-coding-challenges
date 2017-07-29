//: Playground - noun: a place where people can play

import UIKit

class Node<Element> {
    var data : Element
    var next : Node?=nil
    init(withData data: Element) {
        self.data = data
    }
}



