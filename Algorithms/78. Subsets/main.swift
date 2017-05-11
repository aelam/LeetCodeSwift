//
//  main.swift
//  78. Subsets
//
//  Created by ryan on 11/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

// https://leetcode.com/problems/subsets/#/description

/*
 Total Accepted: 155866
 Total Submissions: 401178
 Difficulty: Medium
 Contributor: LeetCode
 
 Given a set of distinct integers, nums, return all possible subsets.

 Note: The solution set must not contain duplicate subsets.

 For example,
 If nums = [1,2,3], a solution is:

 [
    [3],
    [1],
    [2],
    [1,2,3],
    [1,3],
    [2,3],
    [1,2],
    []
 ]
*/


class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var results: [[Int]] = [[]]
        for digit in nums {
            let count = results.count
            for i in 0..<count {
                results.append(results[i] + [digit])
            }
        }
        return results
    }
}

let solution = Solution()
print(solution.subsets([1,2,3]))
