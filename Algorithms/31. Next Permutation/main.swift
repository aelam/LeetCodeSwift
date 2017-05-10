//
//  main.swift
//  47. Permutations II
//
//  Created by ryan on 09/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
 * Given a collection of numbers that might contain duplicates, return all possible unique permutations.

 * For example,
    [1,1,2] have the following unique permutations:
        [[1,1,2],
        [1,2,1],
        [2,1,1]]
*/

class Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        
        var results = [[Int]]()
        var newNums = nums.sorted()
        results.append(newNums)
        while nextPermutation(&newNums) {
            results.append(newNums)
        }
        
        return results
    }
    
    func nextPermutation(_ nums: inout [Int]) -> Bool {
        
        let count = nums.count
        guard count > 1 else {
            return false
        }
        
        var pivot: Int = -1
        for i in (0..<count-1).reversed() {
            if nums[i] < nums[i + 1] {
                pivot = i
                break
            }
        }
        
        guard pivot >= 0 else {
            reverse(&nums, 0, count - 1)
            return false
        }
        
        var nextPivot: Int = -1
        for i in (0...count-1).reversed() {
            if nums[i] > nums[pivot] {
                nextPivot = i
                break
            }
        }
        
        if nextPivot <= 0 {
            reverse(&nums, 0, count - 1)
            return false
        }
        
        swap(&nums[pivot], &nums[nextPivot])
        reverse(&nums, pivot + 1, count - 1)
        
        return true
        
    }
    
    func reverse(_ nums: inout [Int], _ beginIndex: Int, _ endIndex: Int) {
        for i in 0...((endIndex - beginIndex) / 2) {
            if beginIndex + i < endIndex - i {
                swap(&nums[beginIndex + i], &nums[endIndex - i])
            }
        }
    }
}

let solution = Solution()
var input = [2,1,3]
print(solution.permuteUnique(input))

