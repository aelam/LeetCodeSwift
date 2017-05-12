//
//  main.swift
//  21. Merge Two Sorted Lists
//
//  Created by Ryan Wang on 12/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

// Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        } else if l2 == nil {
            return l1
        } else {
            if l1!.val < l2!.val {
                let tail = mergeTwoLists(l1!.next, l2!)
                l1!.next = tail
                return l1
            } else {
                let tail = mergeTwoLists(l1!, l2!.next)
                l2!.next = tail
                return l2
            }
        }
        
    }
}
