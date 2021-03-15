//: [Previous](@previous)

/*: [82. Remove Duplicates from Sorted List II](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list-ii/)
 
 Given the head of a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list. Return the linked list sorted as well.

 
 Example 1:

 ![](linkedlist1.jpg)

```
 Input: head = [1,2,3,3,4,4,5]
 Output: [1,2,5]
```
 
 Example 2:
 
 ![](linkedlist2.jpg)
 ```
 Input: head = [1,1,1,2,3]
 Output: [2,3]
 ```

 Constraints:

 * The number of nodes in the list is in the range [0, 300].
 * -100 <= Node.val <= 100
 * The list is guaranteed to be sorted in ascending order.

*/


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    

    func printList() {
        var p: ListNode? = self
        
        while p != nil {
            print(p?.val ?? 0)
            
            p = p?.next
        }
    }
}


class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard let h = head else {
            return nil
        }
        
        let dummyHead = ListNode(-101, h)
        var pre = dummyHead
        var p: ListNode? = h
        //   pre  p
        // [-101, 1,2,3,3,4,4,5]
        dummyHead.printList()

        while p != nil {
            //
            var repeatCount = 0
            while p?.next != nil && p?.val == p?.next?.val {
                p = p?.next
                repeatCount += 1
            }
            
            if repeatCount > 0 {
                pre.next = p!.next
                p = p?.next
                repeatCount = 0
            } else {
                pre = p!
                p = p?.next
                print("=========")
                dummyHead.printList()
                print("=========")
            }
            
        }

        return dummyHead.next
    }
}

func generateListNodes(_ array:[Int]) -> ListNode? {
    if array.count == 0 {
        return nil
    }
    
    let head = ListNode.init(array[0])
    var p: ListNode = head
    for i in 1..<array.count {
        let c = ListNode.init(array[i])
        p.next = c
        p = c
    }
    
    return head
}

let l1 = generateListNodes([1, 2, 3, 3, 4, 4, 5])
l1?.printList()

let s = Solution()
let ss = s.deleteDuplicates(l1)
//
//print("=========")
//ss?.printList()

//: [Next](@next)
