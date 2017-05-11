//
//  main.swift
//  1. Two Sum
//
//  Created by Ryan Wang on 11/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
*/

class HashSolution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var cached = Dictionary<Int, Int>()
        for i in 0..<nums.count {
            let reminding = target - nums[i]
            let index = cached[reminding]
            if let a = index {
                return [a, i]
            } else {
                cached[nums[i]] = i
            }
        }
        
        return []
        
    }
}

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count-1 {
            let reminding =  target - nums[i]
            for j in i+1..<nums.count {
                if nums[j] == reminding {
                    return [i, j]
                }
            }
        }
        
        return []
    }
}


let nums = [2, 7, 11, 15]
let target = 9
let solution = Solution()
print(solution.twoSum(nums, target))
