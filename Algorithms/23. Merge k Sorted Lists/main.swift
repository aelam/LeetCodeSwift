//
//  main.swift
//  23. Merge k Sorted Lists
//
//  Created by ryan on 23/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/**
 * 
 * Merge k sorted linked lists and return it as one sorted list. Analyze and describe its complexity.
 *
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

//TODO: 解法超时, 需要优化
class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.count == 0 {
            return nil
        } else if lists.count == 1 {
            return lists.first!
        }
        var listNode: ListNode? = nil
        for list in lists {
            listNode = mergeList(listNode, list)
        }
        
        return listNode
    }
    
    func mergeList(_ listA: ListNode?, _ listB: ListNode?) -> ListNode? {
        if listA == nil {
            return listB
        } else if listB == nil {
            return listA
        }
        
        if listA!.val < listB!.val {
            let right = mergeList(listA!.next, listB)
            listA?.next = right
            return listA
        } else {
            let right = mergeList(listB!.next, listA)
            listB?.next = right
            return listB
        }
    }
}

func createLists(_ values: [[Int]]) -> [ListNode?] {
    var lists: [ListNode?] = [ListNode?]()
    
    for value in values {
        let list = createList(value)
        lists.append(list)
    }
    return lists
}

func createList(_ values: [Int]) -> ListNode {
    let first = ListNode(values[0])
    var pivot = first
    for i in 1..<values.count {
        pivot.next = ListNode(values[i])
        pivot = pivot.next!
    }
    return first
}


let soluition = Solution()
let lists = createLists([[7],[49],[73],[58],[30],[72],[44],[78],[23]])
soluition.mergeKLists(lists)
