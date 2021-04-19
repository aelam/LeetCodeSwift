//: [Previous](@previous)

/*:

 [83. Remove Duplicates from Sorted List](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/)
 
 
 Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

 
 ![](list1.jpg)
 ```
 Example 1:

 Input: head = [1,1,2]
 Output: [1,2]
 ```
 
 
 ![](list2.jpg)
 ```
 Example 2:


 Input: head = [1,1,2,3,3]
 Output: [1,2,3]
 ```

 Constraints:

 * The number of nodes in the list is in the range [0, 300].
 * -100 <= Node.val <= 100
 * The list is guaranteed to be sorted in ascending order.

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
    
    
    convenience init(_ array:[Int]) {
        if array.count == 0 {
            fatalError()
        }
        
        self.init(array[0])
        var p: ListNode = self
        for i in 1..<array.count {
            let c = ListNode.init(array[i])
            p.next = c
            p = c
        }
    }
}


class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var p = head
        while p != nil {
            while p?.next != nil && p!.val == p!.next!.val {
                p?.next = p?.next?.next
            }
            p = p?.next
        }
        
        return head
    }
}

let l1 = ListNode([1,1, 3,3,4, 4, 5,6])

let s = Solution()
let l2 = s.deleteDuplicates(l1)
l2?.printList()


//: [Next](@next)
