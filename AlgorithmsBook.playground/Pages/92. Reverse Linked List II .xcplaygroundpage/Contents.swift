//: [Previous](@previous)

/*:
 [92. Reverse Linked List II](https://leetcode-cn.com/problems/reverse-linked-list-ii/)
 
Given the `head` of a singly linked list and two integers `left` and `right` where `left <= right`, reverse the nodes of the list from position `left` to position `right`, and return the reversed list.

 ![](rev2ex2.jpg)

```
Example 1:

Input: head = [1,2,3,4,5], left = 2, right = 4
Output: [1,4,3,2,5]
```
```
Example 2:

Input: head = [5], left = 1, right = 1
Output: [5]
```

Constraints:

* The number of nodes in the list is n.
* 1 <= n <= 500
* -500 <= Node.val <= 500
* 1 <= left <= right <= n
 

Follow up: Could you do it in one pass?

*/


///
/// TODO: unfinished
///
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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        print("head:", head?.val)

        
        let dummy = ListNode(-1)
        dummy.next = head
        
        var leftPoint: ListNode?
        var rightPoint: ListNode?
        
        for _ in 0..<(left-1) {
            leftPoint = head?.next
        }
        
        print("leftPoint:", leftPoint?.val)
        
        rightPoint = leftPoint
        for _ in 0..<(right-left) {
            rightPoint = rightPoint?.next
        }

        print("rightPoint:", rightPoint?.val)

        let pp = rightPoint?.next
        
        print("pp:", pp?.val)

        rightPoint?.next = nil
        
        let ppp = reverse(leftPoint)
        ppp?.printList()
        print("==========")
        var p = dummy.next
        while p?.next != nil {
            p = p?.next
        }
        
        print("p: ", p?.val)
        p?.next = pp
        dummy.printList()

        return dummy.next
        
    }
    
    func reverse(_ head: ListNode?) -> ListNode? {
        var pre: ListNode?
        var current: ListNode?
        var next: ListNode?

        current = head
        
        // 1 2 3 4 5
        // c n
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
let l2 = s.reverse(l1)
l2?.printList()

//let l3 = s.reverseBetween(l1, 2, 4)
//l3?.printList()
//: [Next](@next)
