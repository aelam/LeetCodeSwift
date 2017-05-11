//
//  main.swift
//  80. Remove Duplicates from Sorted Array II
//
//  Created by ryan on 11/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

// https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/#/description


/*
 Follow up for "Remove Duplicates":
 What if duplicates are allowed at most twice?
 
 For example,
 Given sorted array nums = [1,1,1,2,2,3],
 
 Your function should return length = 5, with the first five elements of nums being 1, 1, 2, 2 and 3. It doesn't matter what you leave beyond the new length.
 
 */
class BetterSolution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 3 {
            return nums.count
        }
        
        var index = 0
        while index + 2 < nums.count {
            while index + 2 < nums.count && nums[index] == nums[index + 2]  {
                nums.remove(at: index)
            }
            
            index += 1
        }
        
        return nums.count
    }
}



class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var count = nums.count
        var currentCount = 1
        var pivot = nums.last!
        for i in (0..<nums.count - 1).reversed() {
            if nums[i] == pivot {
                currentCount += 1
            } else {
                pivot = nums[i]
                currentCount = 1
            }

            if currentCount > 2 {
                nums.remove(at: i+1)
                count -= 1
            }
        }
        
        return count
    }
}


let solution = BetterSolution()
//var array = [1,1,2,3,3,3,4,4,8,8]
var array = [1,1,1,1]
print(solution.removeDuplicates(&array))
print(array)


