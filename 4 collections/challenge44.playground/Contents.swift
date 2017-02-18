//: Playground - noun: a place where people can play

/*
 Challenge 44: Linked list mid-point
 Difficulty: Easy
 Extend your linked list class with a new method that returns the node at the mid point of the linked list using no more than one loop.
 Tip: If the linked list contains an even number of items, returning the one before or the one after the center is acceptable.
 Sample input and output
 • If the linked list contains 1, 2, 3, 4, 5, your method should return 3.
 • If the linked list contains 1, 2, 3, 4, your method may return 2 or 3.
 • If the linked list contains the English alphabet, your method may return M or N.
 */

import UIKit

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var start: LinkedListNode<T>?
    
    func printNodes() {
        var currentNode = start
        
        while let node = currentNode {
            print(node.value, terminator: " ")
            currentNode = node.next
        }
    }
    
    var centerNode: LinkedListNode<T>? {
        var slow = start
        var fast = start
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return slow
    }
}

var list = LinkedList<Character>()
var previousNode: LinkedListNode<Character>? = nil
for letter in "abcdefghijklmnopqrstuvwxyz".characters {
    let node = LinkedListNode(value: letter)
    if let predecessor = previousNode {
        predecessor.next = node
    } else {
        list.start = node
    }
    previousNode = node
}

print(list.centerNode!.value)



