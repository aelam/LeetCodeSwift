//
//  main.swift
//  61. Rotate List
//
//  Created by ryan on 01/06/2017.
//  Copyright © 2017 ryan. All rights reserved.
//


/*
Given a list, rotate the list to the right by k places, where k is non-negative.

For example:
Given 1->2->3->4->5->NULL and k = 2,
return 4->5->1->2->3->NULL.
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

// 有问题
class Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        
        var newHead = head
        var oldEnd = head
        var newEnd = head
        if k == 0 {
            return head
        }
        
        for _ in 1...k {
            oldEnd = oldEnd?.next
        }
        
        while oldEnd?.next != nil {
            oldEnd = oldEnd?.next
            newEnd = newHead
            newHead = newHead?.next
        }
        
        newEnd?.next = nil
        oldEnd?.next = head
        
        return newHead
    }
}



let solution = Solution()

let p1 = ListNode(1)
let p2 = ListNode(2)
let p3 = ListNode(3)
let p4 = ListNode(4)
let p5 = ListNode(5)
p1.next = p2
p2.next = p3
p3.next = p4
p4.next = p5




var ppp: ListNode? = solution.rotateRight(p1, 1)
while ppp != nil {
    print(ppp?.val)
    ppp = ppp?.next
}



