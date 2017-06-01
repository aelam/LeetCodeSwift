//
//  main.swift
//  70. Climbing Stairs
//
//  Created by ryan on 01/06/2017.
//  Copyright © 2017 ryan. All rights reserved.
//

/*
You are climbing a stair case. It takes n steps to reach to the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

Note: Given n will be a positive integer.

*/
// 递归解法
class Solution {
    func climbStairs(_ n: Int) -> Int {
        var results = [Int: Int]()
        return _climbStairs(n, &results)
    }
    
    func _climbStairs(_ n: Int, _ results: inout [Int: Int]) -> Int {
        if n == 1 {
            return 1
        } else if n == 2 {
            return 2
        } else {
            if let result = results[n] {
                return result
            } else {
                results[n] = _climbStairs(n - 2, &results) + _climbStairs(n - 1, &results)
                return results[n]!
            }
        }
    }
}


// DP解法


let solution = Solution()
print(solution.climbStairs(2))
print(solution.climbStairs(3))
print(solution.climbStairs(4))
