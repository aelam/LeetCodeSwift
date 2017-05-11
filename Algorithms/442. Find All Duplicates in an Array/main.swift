//
//  main.swift
//  442. Find All Duplicates in an Array
//
//  Created by ryan on 11/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
 Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

 Find all the elements that appear twice in this array.

 Could you do it without extra space and in O(n) runtime?

Example:
Input:
 [4,3,2,7,8,2,3,1]

Output:
 [2,3]

*/

class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var results = [Int]()
        var numss = nums
        for i in 0..<numss.count {
            let index = abs(numss[i]) - 1
            if numss[index] < 0 {
                results.append(index + 1)
            }
            numss[index] = -numss[index]
        }
        
        return results
    }
}

let solution = Solution()
print(solution.findDuplicates( [4,3,2,7,8,2,3,1]))
