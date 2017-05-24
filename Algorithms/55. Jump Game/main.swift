//
//  main.swift
//  55. Jump Game
//
//  Created by ryan on 24/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//


/*
Given an array of non-negative integers, you are initially positioned at the first index of the array.

Each element in the array represents your maximum jump length at that position.

Determine if you are able to reach the last index.

For example:
A = [2,3,1,1,4], return true.

A = [3,2,1,0,4], return false.
 
 */

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var reach = nums[0]
        for i in 1..<nums.count {
            if i <= reach {
                reach = max(reach, i + nums[i])
            }
        }
        return reach >= nums.count - 1
    }
}


class FirstSolution {
    func canJump(_ nums: [Int]) -> Bool {
        let count = nums.count
        var dp = [Int](repeating: 0, count: count)
        var reach = nums[0]
        dp[0] = nums[0]
        for i in 1..<count {
            if i <= reach {
                dp[i] = i + nums[i]
            } else {
                dp[i] = 0
            }
            reach = max(reach, dp[i])
        }
        
        return reach >= nums.count - 1
    }
}

let solution = Solution()
var nums = [2,3,1,1,4]
//var nums = [-1]
print(solution.canJump(nums))
