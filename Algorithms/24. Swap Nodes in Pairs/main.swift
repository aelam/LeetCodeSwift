//
//  main.swift
//  24. Swap Nodes in Pairs
//
//  Created by ryan on 01/06/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
 
 Given a linked list, swap every two adjacent nodes and return its head.
 
 For example,
 Given 1->2->3->4, you should return the list as 2->1->4->3.
 
 Your algorithm should use only constant space. You may not modify the values in the list, only nodes itself can be changed.
 
 */


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var A = head
        var B = head?.next
        
        while A != nil && B != nil {
            swap(&A!, &B!)
            
            A = A?.next?.next
            B = B?.next?.next
        }
        
        return head
    }
    
    func swap(_ A: inout ListNode, _ B: inout ListNode) {
        let temp = B.val
        B.val = A.val
        A.val = temp
    }
}


let node1 = ListNode(1)
let node2 = ListNode(2)
let node3 = ListNode(3)
let node4 = ListNode(4)

node1.next = node2
node2.next = node3
node3.next = node4

let solution = Solution()
var newHead = solution.swapPairs(node1)

while newHead != nil {
    print(newHead!.val)
    newHead = newHead?.next
}



