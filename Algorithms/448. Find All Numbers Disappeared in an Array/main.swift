//
//  main.swift
//  448. Find All Numbers Disappeared in an Array
//
//  Created by ryan on 11/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
 Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
 
 Find all the elements of [1, n] inclusive that do not appear in this array.
 
 Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
 
 Example:
 
 Input:
 [4,3,2,7,8,2,3,1]
 
 Output:
 [5,6]
 
 
 */

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        
        var results = [Int]()
        var numss = nums
        
        for i in 0..<numss.count {
            let index = abs(numss[i]) - 1
            if numss[index] > 0 {
               numss[index] = -numss[index]
            }
        }
        
        for i in 0..<numss.count {
            print(i, nums[i], numss[i])
            
            if numss[i] > 0 {
                results.append(i + 1)
            }
        }

        return results
    }
}


let solution = Solution()
print(solution.findDisappearedNumbers( [4,3,2,7,8,2,3,1]))
