//
//  main.swift
//  26. Remove Duplicates from Sorted Array
//
//  Created by ryan on 11/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

//https://leetcode.com/problems/remove-duplicates-from-sorted-array/#/description

/*
Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

Do not allocate extra space for another array, you must do this in place with constant memory.

For example,
Given input array nums = [1,1,2],

Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.

*/


class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        
        var index = nums.count - 1
        while index >= 1 {
            while index >= 1 && nums[index] == nums[index-1] {
                nums.remove(at: index)
                index -= 1
            }
            if index >= nums.count {
                break
            }
            index -= 1
        }
    
        return nums.count
    }
}

let solution = Solution()
var array = [1,1,1]
print(solution.removeDuplicates(&array))

print(array)