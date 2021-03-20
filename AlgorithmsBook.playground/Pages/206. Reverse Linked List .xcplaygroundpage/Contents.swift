//: [Previous](@previous)

/*:
 
 [206. Reverse Linked List](https://leetcode-cn.com/problems/reverse-linked-list)
 
Given the head of a singly linked list, reverse the list, and return the reversed list.


 ![](rev1ex1.jpg)
```
Example 1:

Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]
```
 
![](rev1ex2.jpg)
```
Example 2:


Input: head = [1,2]
Output: [2,1]
```
```
 Example 3:

Input: head = []
Output: []
```

Constraints:

* The number of nodes in the list is the range [0, 5000].
* -5000 <= Node.val <= 5000
 

Follow up: A linked list can be reversed either iteratively or recursively. Could you implement both?

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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var pre: ListNode?
        var current: ListNode? = head
        var next: ListNode?

        while current != nil {
            next = current?.next
            current?.next = pre

            pre = current
            current = next
        }

        return pre
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

let l1 = generateListNodes([1, 2, 3, 4, 5])
l1?.printList()

print("==========")
let s = Solution()
let l2 = s.reverseList(l1)
l2?.printList()

//: [Next](@next)
