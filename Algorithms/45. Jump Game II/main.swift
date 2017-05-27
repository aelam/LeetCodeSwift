//
//  main.swift
//  45. Jump Game II
//
//  Created by ryan on 12/05/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
 
 Given an array of non-negative integers, you are initially positioned at the first index of the array.
 
 Each element in the array represents your maximum jump length at that position.
 
 Your goal is to reach the last index in the minimum number of jumps.
 
 For example:
 Given array A = [2,3,1,1,4]
 
 The minimum number of jumps to reach the last index is 2. (Jump 1 step from index 0 to 1, then 3 steps to the last index.)
 
 Note:
 You can assume that you can always reach the last index.
 
 */

class Solution2 {
    func jump(_ nums: [Int]) -> Int {
        let count = nums.count
        
        if count <= 1 {
            return 0
        }
        
        var steps = [Int](repeating: Int.min, count: count)
        var stepCount = 0
        steps[stepCount] = nums[0]
        if steps[stepCount] == 0 {
            return 0
        }
        
        if steps[stepCount] >= count - 1 {
            return stepCount + 1
        }
        for i in 1..<count {
            if steps[stepCount] >= i {
                steps[stepCount+1] = max(steps[stepCount+1], steps[stepCount] + nums[i])

                if steps[stepCount] >= count - 1 {
                    return stepCount
                }
            } else {
                steps[stepCount+1] = max(steps[stepCount+1], steps[stepCount] + nums[i])
                if steps[stepCount+1] >= count - 1 {
                    return stepCount+2
                }
                stepCount += 1
            }
        }
        
        return 1

    }
    
}


class Solution {
    func jump(_ nums: [Int]) -> Int {
        if nums.count <= 1 || nums[0] == 0 {
            return 0
        }
        var newNums = nums
        return sol(&newNums, 0)
    }
    
    func sol(_ nums: inout [Int], _ index: Int) -> Int {

        if index >= nums.count - 1 {
            return 0
        }
        
        if nums[index] == 0 {
            return Int.max
        }
        
        let distance = nums.count - 1 - index
        if nums[index] >= distance {
            return 1
        } else {
            var steps = Int.max
            for i in (1...nums[index]) {
                
                let  subSteps = sol(&nums, index + i)
                if subSteps == Int.max {
                    continue
                }
                steps = min(steps, 1 + subSteps)
            }
            return steps
        }
    }
    
}



let solution = Solution2()

//          0           5          10         15         20         25         30         35   38
var data = [5,6,4,4,6,  9,4,4,7,4, 4,8,2,6,8, 1,5,9,6,5, 2,7,9,7,9, 6,9,4,1,6, 8,8,4,4,2, 0,3,8,5]
//var data = [5,6,4,4,6,  9,4,4,7,4, 4,8,2,6,8, 1,5,9,6,5, 2,7,9,7,9, 6,9,4,1,6, 8,8,4,4,2,3,8,5]
//var data = [5,6,4,4,6,  9,4,4,7,4, 4,8,2,6,8]
print(solution.jump([1,2]) == 1)
print(solution.jump([1,2,3]) == 2)
//print(data.count)
//print(solution.sol(&data, 38) == 0)
//print(solution.sol(&data, 36) == 1)
//print(solution.sol(&data, 35) == Int.max)
//print(solution.sol(&data, 34) == 2)
//print(solution.sol(&data, 33) == 2)
//print(solution.sol(&data, 32) == 2)
//print(solution.sol(&data, 31) == 1)
//print(solution.sol(&data, 30) == 1)

//print(solution.sol(&data, 34))
//print(solution.jump([5,6,4,4,6,0,9]))


