//
//  main.swift
//  19. Remove Nth Node From End of List
//
//  Created by ryan on 31/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given a linked list, remove the nth node from the end of list and return its head.

For example,

Given linked list: 1->2->3->4->5, and n = 2.

After removing the second node from the end, the linked list becomes 1->2->3->5.
Note:
Given n will always be valid.
Try to do this in one pass.
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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var p1 = head
        var p3: ListNode? = head
        
        for _ in 0..<n {
            p3 = p3!.next
        }
        
        if p3 == nil {
            return nil
        }
        
        while p3?.next != nil {
            p1 = p1?.next
            p3 = p3?.next
        }
        
        // 删除
        p1!.next = p1?.next?.next
        
        return head
    }
}

let solution = Solution()

let p1 = ListNode(1)
let p2 = ListNode(2)
//let p3 = ListNode(3)
//let p4 = ListNode(4)
//let p5 = ListNode(5)
//p1.next = p2
//p2.next = p3
//p3.next = p4
//p4.next = p5

var pp: ListNode? = p1
while pp != nil {
    print(pp?.val)
    pp = pp?.next
}

var ppp: ListNode? = solution.removeNthFromEnd(p1, 2)
while ppp != nil {
    print(ppp?.val)
    ppp = ppp?.next
}

