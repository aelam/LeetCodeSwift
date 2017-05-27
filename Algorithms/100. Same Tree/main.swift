//
//  main.swift
//  100. Same Tree
//
//  Created by ryan on 26/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given two binary trees, write a function to check if they are equal or not.

Two binary trees are considered equal if they are structurally identical and the nodes have the same value.
 
 */

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

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

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        } else if p != nil && q != nil && p!.val == q!.val {
            return (isSameTree(p?.left, q?.left) &&
                    isSameTree(p?.right, q?.right))
        } else {
            return false
        }
    }
}


let solution = Solution()










