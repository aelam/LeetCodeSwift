//
//  main.swift
//  540. Single Element in a Sorted Array
//
//  Created by ryan on 10/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        
        let low = 0
        let high = nums.count/2
        
        let index = singleNonDuplicate(nums, low: low, high: high)
        return nums[index]
    }
    
    func singleNonDuplicate(_ nums: [Int], low: Int, high: Int) -> Int {
        let mid = (low + high)/2
        if low < high {
            if nums[2 * mid] != nums[2 * mid + 1] {
                return singleNonDuplicate(nums, low: low, high: mid)
            } else {
                return singleNonDuplicate(nums, low: mid + 1, high: high)
            }
        }
        
        return 2 * low
    }
    
}


let solution = Solution()

//let array = [1,1,2,3,3,4,4,8,8]
//let array = [1,1,2]
let array = [1,1,2,3,3,4,4,8,8]
print(solution.singleNonDuplicate(array))
