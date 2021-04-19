//: [Previous](@previous)

/*:

 [94. Binary Tree Inorder Traversal](https://leetcode-cn.com/problems/binary-tree-inorder-traversal/)
 
 Given the `root` of a binary tree, return the inorder traversal of its nodes' values.

 

 ![](inorder_1.jpg)
 ```
 Example 1:
 Input: root = [1,null,2,3]
 Output: [1,3,2]
```

```
 Example 2:

 Input: root = []
 Output: []
```

```
 Example 3:

 Input: root = [1]
 Output: [1]
```
 ![](inorder_5.jpg)
```
 Example 4:


 Input: root = [1,2]
 Output: [2,1]
```
 
 ![](inorder_4.jpg)
```
 Example 5:


 Input: root = [1,null,2]
 Output: [1,2]
```

 Constraints:

 * The number of nodes in the tree is in the range [0, 100].
 * -100 <= Node.val <= 100
  

 Follow up:

 Recursive solution is trivial, could you do it iteratively?
 
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        inorderTraversal(root, &result)
        return result
    }

    func inorderTraversal(_ root: TreeNode?, _ result: inout [Int]) {
        guard let root = root else {
            return
        }

        if let left = root.left {
            inorderTraversal(left, &result)
        }

        result.append(root.val)

        if let right = root.right {
            inorderTraversal(right, &result)
        }
    }
}

class Solution2 {
    func minDiffInBST(_ root: TreeNode?) -> Int {
        var minValue = Int.max

        inorder(root, &minValue)

        return minValue
    }

    func inorder(_ root: TreeNode?, _ results: inout Int) {
        guard let root = root else {
            return
        }

        if let node = root.left {
            inorder(node, &results)
            results = min(results, abs(root.val - node.val))
        }

        if let node = root.right {
            inorder(node, &results)
            results = min(results, abs(root.val - node.val))
        }
    }
}


class Solution2 {
    func minDiffInBST(_ root: TreeNode?) -> Int {
        var results = [Int]()

        inorder(root, &results)

        var minValue = Int.max
        for i in 1..<results.count {
            minValue = min(minValue, abs(results[i] - results[i - 1]))
        }

        return minValue
    }

    func inorder(_ root: TreeNode?, _ results: inout [Int]) {
        guard let root = root else {
            return
        }

        if let node = root.left {
            inorder(node, &results)
        }

        results.append(root.val)

        if let node = root.right {
            inorder(node, &results)
        }
    }
}



//: [Next](@next)
