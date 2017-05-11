//
//  main.swift
//  15. 3Sum
//
//  Created by Ryan Wang on 11/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

Note: The solution set must not contain duplicate triplets.

For example, given array S = [-1, 0, 1, 2, -1, -4],

A solution set is:
[
[-1, 0, 1],
[-1, -1, 2]
]

 */

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var results = [[Int]]()
        var newNums = nums.sorted()
        
        for targetIndex in 0..<nums.count - 2 {
            var low = targetIndex + 1
            var high = nums.count - 1
            while low < high {
                let target = -newNums[targetIndex]
                let sum = newNums[low] + newNums[high]
                if sum < target {
                    high -= 1
                } else if sum > target {
                    low += 1
                } else {
                    let lowValue = newNums[low]
                    let highValue = newNums[high]
                    results.append([newNums[targetIndex], lowValue, highValue])
                    
                    while low < high && lowValue == newNums[low] {
                        low += 1
                    }
                    while low < high && highValue == newNums[high] {
                        high -= 1
                    }
                }
            }
        }
        
        
        return results
    }
}

let solution = Solution()
print(solution.threeSum([-1,0,1,2,-1,-4]))

