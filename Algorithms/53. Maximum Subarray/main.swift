//
//  main.swift
//  53. Maximum Subarray
//
//  Created by ryan on 24/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Find the contiguous subarray within an array (containing at least one number) which has the largest sum.

For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
the contiguous subarray [4,-1,2,1] has the largest sum = 6.

click to show more practice. [https://leetcode.com/problems/maximum-subarray/#]


*/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        let n = nums.count
        var dp = [Int](repeating: 0, count: n) //dp[i] means the maximum subarray ending with A[i]
        dp[0] = nums[0]
        var maxValue = dp[0]

        for i in 1..<n {
            if dp[i-1] > 0 {
                dp[i] = dp[i-1] + nums[i]
            } else {
                dp[i] = nums[i]
            }
            
            maxValue = max(maxValue, dp[i])
        }
        return maxValue
    }
}

let solution = Solution()
var nums = [-2,1,-3,4,-1,2,1,-5,4]
//var nums = [-1]
print(solution.maxSubArray(nums))
