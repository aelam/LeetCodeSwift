//
//  main.swift
//  27. Remove Element
//
//  Created by ryan on 24/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
 Given an array and a value, remove all instances of that value in place and return the new length.
 
 Do not allocate extra space for another array, you must do this in place with constant memory.
 
 The order of elements can be changed. It doesn't matter what you leave beyond the new length.
 
 Example:
 Given input array nums = [3,2,2,3], val = 3
 
 Your function should return length = 2, with the first two elements of nums being 2.
 
 */


class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var p = 0
        for i in 0..<nums.count {
            if nums[i] != val {
                nums[p] = nums[i]
                p += 1
            }
        }
        return p
    }
}

let solution = Solution()
var nums = [3,2,2,3], val = 3
print(solution.removeElement(&nums, val))
print(nums)
