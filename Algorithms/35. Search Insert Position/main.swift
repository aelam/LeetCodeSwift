//
//  main.swift
//  35. Search Insert Position
//
//  Created by ryan on 24/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Here are few examples.
[1,3,5,6], 5 → 2
[1,3,5,6], 2 → 1
[1,3,5,6], 7 → 4
[1,3,5,6], 0 → 0


*/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        while low <= high {
            let mid = (low + high) / 2
            if target > nums[mid] {
                low = mid + 1
            } else if target < nums[mid] {
                high = mid - 1
            } else {
                return mid
            }
        }

        return low
    }
}


let solution = Solution()
var nums = [1,3,5,6], val = 5
//print(solution.searchInsert(nums, val))
//print(solution.searchInsert([1,3,5,6], 2))
//print(solution.searchInsert([1,3,5,6], 7))
//print(solution.searchInsert([1,3,5,6], 0))
print(solution.searchInsert([1,3], 4))



