//
//  main.swift
//  167. Two Sum II - Input array is sorted
//
//  Created by ryan on 12/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/**
 
 Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.
 
 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
 
 You may assume that each input would have exactly one solution and you may not use the same element twice.
 
 Input: numbers={2, 7, 11, 15}, target=9
 Output: index1=1, index2=2
 
 
 */

// O(n)
class DynamicSolution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        
        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left + 1, right + 1]
            } else {
                if sum > target && left < right {
                    right -= 1
                }
                
                if sum < target && left < right {
                    left += 1
                }
            }
        }
        
        return []
    }
}



// O(nlog(n)) : for-loop + binary-search
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        for i in 0..<numbers.count - 1 {
            let reminding = target - numbers[i]
            
            var low = i + 1
            var high = numbers.count - 1
            
            while low <= high {
                let mid = (low + high) / 2
                if numbers[mid] == reminding {
                    return [i + 1, mid + 1]
                } else if numbers[mid] > reminding {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            }

        }
        return []
    }
}

let solution = DynamicSolution()
print(solution.twoSum([2,7,11,15], 9))

