//
//  main.swift
//  199. Binary Tree Right Side View
//
//  Created by ryan on 26/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.

For example:
Given the following binary tree,
          1            <---
        /   \
       2     3         <---
        \     \
         5     4       <---

 You should return [1, 3, 4].
*/


/**
 Definition for a binary tree node.
 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
     }
 }
 */

// 按层遍历

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
}

class SimpleSolution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        var results = [Int]()
        
        right(root, depth: 0, results: &results)
        
        return results
    }
    
    
    func right(_ node: TreeNode?, depth: Int, results: inout [Int]) {
        guard let node = node else {
            return
        }
        
        if results.count == depth {
            results.append(node.val)
        }
        
        right(node.right, depth: depth + 1, results: &results)
        right(node.left, depth: depth + 1, results: &results)
        
    }
}


class Solution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        var visibleValues = [Int]()
        let p = root
        var queue = [[TreeNode]]()
        
        if p != nil {
            queue.append([p!])
        } else {
            return []
        }
        
        while queue.count > 0 {
            let node = queue.remove(at: 0)
            if let first = node.first {
                visibleValues.append(first.val)
            }
            var children = [TreeNode]()
            for t in node {
                if t.right != nil {
                    children.append(t.right!)
                }
                if t.left != nil {
                    children.append(t.left!)
                }
            }
            if children.count > 0 {
                queue.append(children)
            }
        }
        
        return visibleValues
    }
}


let solution = SimpleSolution()
let root = TreeNode(1)
let p2 = TreeNode(2)
let p3 = TreeNode(3)
let p4 = TreeNode(4)


root.left = p2
root.right = p3
p2.left = p4

print(solution.rightSideView(root))
